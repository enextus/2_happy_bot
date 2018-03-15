class UsersController < ApplicationController
  #
  require 'dotenv'
  Dotenv.load

  require 'sidekiq'
  # HardWorker.perform_async('bob', 5)

  TOKEN = ENV['TOKEN']

  # Delay time time until last write to the db
  DELAY = 50

  # check interval after last saving by each user in the DB
  def check_interval(first_name)
    return true if (last_saved = User.where(first_name: first_name)).empty?
    Time.zone.now - last_saved.last.created_at > DELAY
  end

  # get the message from telegram API
  def get_user_message
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.listen do |message|

        @welcome_msg = <<MSG
          Привет #{message.from.first_name.capitalize}!
MSG

        @desc_msg = <<MSG
          Эта шкала субъективного счастья
          измеряет эмоциональное переживание
          индивидом собственной жизни как целого,
          отражающее общий уровень психологического благополучия в данный момент.
MSG

        @thanks_msg = <<MSG
          Спасибо за твой ответ\nДо следующего сеанса,
          #{message.from.first_name.capitalize}!
MSG

        @warning_msg = <<MSG
          Спасибо #{message.from.first_name.capitalize},
          но твой ответ уже принят, до следующего сеанса!
MSG

        @bye_msg = <<MSG
          До следующего сеанса, #{message.from.first_name.capitalize}
MSG

        @req_msg = <<MSG
          #{message.from.first_name.capitalize}, пожалуйста,
          оцени следующее утверждение: "В данный момент я счастлив.",
          сделав соответствующий выбор, нажатием кнопки ниже."
MSG

        case message
        when Telegram::Bot::Types::CallbackQuery
          # Here you can handle your callbacks from inline buttons
          if (-3..3).cover?(message.data.to_i)
            data_cont = message.as_json['message']
            if check_interval(data_cont['chat']['first_name'])

              binding.pry

              User.create(
                first_name: data_cont['chat']['first_name'],
                data: message.as_json['data'],
                date: data_cont['date'],
                telegram_id: data_cont['chat']['id'],
                message_id: data_cont['message_id']
              )
            end
            bot.api.send_message(chat_id: message.from.id, text: @thanks_msg)
          else
            bot.api.send_message(chat_id: message.from.id, text: @warning_msg)
          end
        when Telegram::Bot::Types::Message
          case message.text
          when '/start'
            bot.api.send_message(chat_id: message.chat.id, text: @welcome_msg)
            bot.api.send_message(chat_id: message.chat.id, text: @desc_msg)
            kb = [
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Совершенно не согласен ', callback_data: 3),
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Не согласен', callback_data: 2),
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Немного не согласен', callback_data: 1),
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Неопределенно (и согласен, и не согласен)', callback_data: 0),
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Немного согласен', callback_data: -1),
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Согласен', callback_data: -2),
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Совершенно согласен', callback_data: -3)
            ]
            markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
            bot.api.send_message(chat_id: message.chat.id, text: @req_msg, reply_markup: markup)
          when '/stop'
            bot.api.send_message(chat_id: message.chat.id, text: @bye_msg)
          else
            bot.api.send_message(chat_id: message.chat.id, text: ANSWERS.sample)
          end
        end
      end
    end
  end
  # pos_iz API tool otdaet
end
