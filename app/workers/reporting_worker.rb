# frozen_string_literal: true
require 'active_support/all'
require 'sidekiq'
require 'sidekiq/api' # for rails console

require 'dotenv'

Dotenv.load

TOKEN = ENV['TOKEN']

# this worker send the requests to the telegram users
class ReportingWorker
  include Sidekiq::Worker

  def getting_msg
    return if Message.where(name: 'welcome_msg').empty?

    Message.select(:name, :description).to_hash
  end

  def getting_btn
    return if Button.where(name: '0_btn').empty?

    Button.all
  end

  def perform(*)
    Telegram::Bot::Client.run(TOKEN) do |bot|
      User.all.each do |user|
        bot.api.send_message(chat_id: user.chat.telegram_chat_number, text: user.login + getting_msg['welcome_msg'].to_s)
        bot.api.send_message(chat_id: user.chat.telegram_chat_number, text: getting_msg['desc_msg'])

        kb = getting_btn.map do |button|
          Telegram::Bot::Types::InlineKeyboardButton.new(text: button.description, callback_data: button.button_value)
        end

        markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)

        bot.api.send_message(chat_id: user.chat.telegram_chat_number, text: user.login + getting_msg['req_msg'], reply_markup: markup)
        request = user.chat.requests.create(chat_id: user.chat.id)

        user_chat_id = user.chat.id
        replay_id = request.id
        run_time = request.created_at
        end_time = request.created_at + 333

        CheckingWorker.perform_async(run_time, end_time, user_chat_id, replay_id)
      end
    end
  end
end
