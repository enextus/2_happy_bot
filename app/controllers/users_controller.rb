class UsersController < ApplicationController
  require 'telegram/bot'
  require 'dotenv'
  Dotenv.load

  require 'sidekiq'
  # HardWorker.perform_async('bob', 5)

TOKEN = ENV['TOKEN']
  # time until last write to the db
  DELAY_TIME = 50

  ANSWERS = [
        # positive
        'Бесспорно ',
        'Предрешено',
        'Никаких сомнений',
        'Определённо да',
        'Можешь быть уверен в этом',
        # like positive
        'Мне кажется — «да»',
        'Вероятнее всего',
        'Хорошие перспективы',
        'Знаки говорят — «да»',
        'Да',
        # Neutral
        'Пока не ясно, попробуй снова',
        'Спроси позже',
        'Лучше не рассказывать',
        'Сейчас нельзя предсказать',
        'Сконцентрируйся и спроси опять',
        # Negative
        'Даже не думай',
        'Мой ответ — «нет»',
        'По моим данным — «нет»',
        'Перспективы не очень хорошие',
        'Весьма сомнительно'
      ].freeze

  # check the DELAY_TIME minutes interval
  # until the last saving by each user in the DB
  def check_interval(first_name)

    last_save = User.where(first_name: first_name)

    if last_save.empty?
      return true
    else
      Time.zone.now - last_save.last.created_at > DELAY_TIME
    end
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

            # binding.pry
            # db record to user_id by date and by score at each day
            # rails g migration add_user_user_vote
            # message.as_json['message']['chat']['first_name']
            # message.as_json['message']['date']
            # message.as_json['data']

            # short write for our varianles
            data = message.as_json['data']

            data_content = message.as_json['message']

            first_name = data_content['chat']['first_name']

            date = data_content['date']

            telegram_id = data_content['chat']['id']

            message_id = data_content['message_id']

            # binding.pry

            if check_interval(first_name)
              # write in to DB
              User.create(
                first_name: first_name,
                data: data,
                date: date,
                telegram_id: telegram_id,
                message_id: message_id
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
