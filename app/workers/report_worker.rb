require "active_support/all"
require 'sidekiq'

require 'dotenv'
Dotenv.load

TOKEN = ENV['TOKEN']

class ReportWorker
  include Sidekiq::Worker

  def perform(*args)
    print "\n"
    puts "| Актуальное время: #{Time.zone.now.to_s} |"
    print "\n"

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

        # print "\n"
        # print "| #{Time.zone.now.to_s} | #{user.chat.telegram_chat_number} | #{user.chat.id} | #{user.login} |"
        # print "\n"
        # puts ''

        bot.api.send_message(chat_id: user.chat.telegram_chat_number, text: user.login + getting_msg['req_msg'], reply_markup: markup)
        user.chat.requests.create(chat_id: user.chat.id)

        # binding.pry

        start_date = user.created_at
        end_date = user.created_at + 360
        replay_id = user.chat.id

        ReplayCheckWorker.perform_async(start_date, end_date, replay_id)
      end
    end
  end
end
