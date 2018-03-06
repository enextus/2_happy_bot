class UsersController < ApplicationController
  require 'telegram/bot'
  require 'dotenv'
  Dotenv.load

  require 'sidekiq'
  # HardWorker.perform_async('bob', 5)


TOKEN = ENV['TOKEN']

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

  # et_iz API telegram zabiraet
  def get_user_message

    @how_times = 0
    @choice_did = 0

    # binding pry

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


        # @how_times += 1
        case message
        when Telegram::Bot::Types::CallbackQuery
          # Here you can handle your callbacks from inline buttons
          if (-3..3).cover?(message.data.to_i) && @choice_did.zero?
            # @choice_did = 1
            # first_name  !!!!!! check

            binding.pry
            # db record to user_id by date and by score at each day

            # short write for our varianles
            data_content = message.as_json['message']

            first_name = data_content['chat']['first_name']
            # => "eduardberlin"

            telegram_id = data_content['chat']['id']
            # => 379288866

            date = data_content['date']
            # => 1520343095

            text = data_content['text']

            # => "Eduardberlin, пожалуйста,\n
            # оцени следующее утверждение:
            # \"В данный момент я счастлив.\",\n
            # сделав соответствующий выбор, нажатием кнопки ниже.\""

            # binding.pry

            message_id = data_content['message_id']

            # write in to DB
            User.create(
              first_name: first_name,
              date: date,
              telegram_id: telegram_id,
              message_id: message_id,
              text: text
            )

            bot.api.send_message(chat_id: message.from.id, text: @thanks_msg)
          else
            bot.api.send_message(chat_id: message.from.id, text: @warning_msg)
          end
        when Telegram::Bot::Types::Message
          case message.text
          when '/start'
            # binding.pry
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
            # binding.pry
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
