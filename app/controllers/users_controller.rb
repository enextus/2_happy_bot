# frozen_string_literal: true

# Telegram bot with a happiness measurement tool.
class UsersController < ApplicationController
  require 'dotenv'
  Dotenv.load

  require 'sidekiq'

  TOKEN = ENV['TOKEN']

  # Delay time time until last write to the db
  DELAY = 30

  # check interval after last saving by each user in the DB
  def check_interval(first_name)
    return true if (saved = User.where(login: first_name)).empty?
    Time.zone.now - saved.last.created_at > DELAY
  end

  # add worker to the queue
  def report
    ReportWorker.perform_async("01-03-2018", "10-12-2018" )
  end

  # get the message from telegram API
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

        # messages user name string shortener
        m_name = message.from.first_name.capitalize
        case message
        when Telegram::Bot::Types::CallbackQuery
          return unless message.data.to_i
          if check_interval(message.as_json['message']['chat']['first_name'])
            current_user = User.find_or_create_by(login: message.as_json['message']['chat']['first_name'])
            current_chat = Chat.find_or_create_by(login: message.as_json['message']['chat']['first_name'], chat_id: message.as_json['message']['chat'])
            current_chat.statebuttons.create(data: msg['data'], date: msg['message']['date'], message_id: msg['message']['message_id'])
            # Statebutton.create!(user_reply(message))
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
  # "strong params"

    private

  def generate_report
    sleep 27
  end

  def user_reply(message)
    msg = message.as_json
    {
      data: msg['data'],
      chat_id: msg['message']['chat']['id'],
      date: msg['message']['date'],
      message_id: msg['message']['message_id']
    }
  end
end
