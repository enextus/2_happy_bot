# frozen_string_literal: true

# Telegram bot with a happiness measurement tool.
# a chatId is a unique identifier for a chat, that can be either private, group, supergroup or channel whereas userId is a unique identifier for a user or bot only.
# The only time the values can be the same is in a private chat.
# Read more about Telegram types https://stackoverflow.com/questions/42785390/what-is-difference-between-msg-chat-id-and-msg-from-id-in-telegeram-bot/42786449
class UsersController < ApplicationController
  require 'dotenv'
  Dotenv.load
  require 'sidekiq'

  TOKEN = ENV['TOKEN']

  # Delay time time until last write to the db
  DELAY = 200

  # check interval after last saving by each user in the DB
  def timer(login)
    return true if User.find_by(login: login).nil?

    user = User.find_by(login: login)
    Time.zone.now - user.chat.statebuttons.last.created_at > DELAY
  end

  # add worker to the queue
  def start_hardworker
    HardWorker.perform_async('17-04-2018', '10-12-2018')
  end

  # getting a message from telegram API .
  def getting_user_message
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.listen do |message|
        def getting_msg
          return if Message.where(name: 'welcome_msg').empty?

          Message.select(:name, :description).to_hash
        end

        def getting_btn
          return if Button.where(name: '0_btn').empty?

          Button.all
        end

        m_name = message.from.first_name.capitalize
        case message
        when Telegram::Bot::Types::CallbackQuery
          return unless message.data.to_i

          if timer(message.as_json['message']['chat']['first_name'])
            user = User.find_or_create_by(user_reply(message))
            chat = Chat.find_or_create_by(chat_reply(message).merge(user_id: user.id))

            chat.statebuttons.create(chat_params(message).merge(chat_id: chat.id))
            bot.api.send_message(chat_id: message.from.id, text: m_name + getting_msg['thanks_msg'])

          else
            bot.api.send_message(chat_id: message.from.id, text: m_name + getting_msg['warning_msg'])
          end
        when Telegram::Bot::Types::Message
          case message.text
          when '/start'
            bot.api.send_message(chat_id: message.chat.id, text: m_name + getting_msg['welcome_msg'])
            bot.api.send_message(chat_id: message.chat.id, text: getting_msg['desc_msg'])
            # buttons array
            kb = getting_btn.map do |button|
              Telegram::Bot::Types::InlineKeyboardButton.new(text: button.description, callback_data: button.button_value)
            end
            markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
            bot.api.send_message(chat_id: message.chat.id, text: m_name + getting_msg['req_msg'], reply_markup: markup)
          when '/stop'
            bot.api.send_message(chat_id: message.chat.id, text: m_name + getting_msg['bye_msg'])
          else
            answer = User.class_variable_get :@@answers
            bot.api.send_message(chat_id: message.chat.id, text: m_name + answer.sample)
          end
        end
      end
    end
  end

  # here are "strong params"
  private

  def user_reply(message)
    {
      login: message.as_json['message']['chat']['first_name']
    }
  end

  def chat_reply(message)
    {
      telegram_chat_number: message.as_json['message']['chat']['id']
    }
  end

  def chat_params(message)
    {
      data: message.as_json['data'],
      date: message.as_json['message']['date'],
      message_id: message.as_json['message']['message_id']
    }
  end
end
