require 'active_support/all'
require 'sidekiq'
require 'sidekiq/api' # for the case of rails console

require 'dotenv'
Dotenv.load

TOKEN = ENV['TOKEN']


class ReportingWorker

  include Sidekiq::Worker

  def perform(*args)

    Telegram::Bot::Client.run(TOKEN) do |bot|

      def getting_msg
        return if Message.where(name: 'welcome_msg').empty?
        Message.select(:name, :description).to_hash
      end

      def getting_btn
        return if Button.where(name: '0_btn').empty?
        Button.all
      end

      user = User.all

      user.each do |user|

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
        beginning_time = request.created_at
        end_time = request.created_at + 90

        CheckingWorker.perform_async(beginning_time, end_time, user_chat_id, replay_id)
      end
    end
  end
end
