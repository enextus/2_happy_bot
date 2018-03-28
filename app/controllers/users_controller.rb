# frozen_string_literal: true

# Telegram bot with a happiness measurement tool.
class UsersController < ApplicationController
  require 'dotenv'
  Dotenv.load

  require 'sidekiq'
  # HardWorker.perform_async('bob', 5)

  TOKEN = ENV['TOKEN']

  # Delay time time until last write to the db
  DELAY = 30

  # check interval after last saving by each user in the DB
  def check_interval(first_name)
    return true if (last_saved = User.where(first_name: first_name)).empty?
    Time.zone.now - last_saved.last.created_at > DELAY
  end

  # add worker to the queue
  def report
    ReportWorker.perform_async("01-03-2018", "10-12-2018" )
  end

  # get the message from telegram API
  def getting_user_message
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.listen do |message|
        # parsing of data hash
        def getting_msg
          return if Message.where(name: 'welcome_msg').empty?
          Message.select(:name, :description).to_hash
        end

        def getting_btn
          return if Button.where(name: '0_btn').empty?
          Button.all
        end

        # messages user name string shortener
        m_name = message.from.first_name.capitalize!

        # messages user name string shortener
        msg_dat = message.as_json['message']

        case message
        when Telegram::Bot::Types::CallbackQuery
          # Here you can handle your callbacks from inline buttons
          return false unless message.data.to_i
          if check_interval(msg_dat['chat']['first_name'])
            User.create(user_params(message))
            # worker start
            # report
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

  def user_params(message)
    msg = message.as_json
    {
      first_name: msg['message']['chat']['first_name'],
      data: msg['data'],
      date: msg['message']['date'],
      chat_id: msg['message']['chat']['id'],
      message_id: msg['message']['message_id']
    }
  end
end
