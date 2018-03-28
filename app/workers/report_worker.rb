require "active_support/all"
require 'sidekiq'

require 'dotenv'
Dotenv.load

TOKEN = ENV['TOKEN']

class ReportWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    puts "-------------------------------------------------------------"
    puts "Актуальное время:" + Time.zone.now.to_s
    # puts ReportWorker.ancestors
    puts "-------------------------------------------------------------"

      Telegram::Bot::Client.run(TOKEN) do |bot|

        def getting_msg
          return if Message.where(name: 'welcome_msg').empty?
          Message.select(:name, :description).to_hash
        end

        def getting_btn
          return if Button.where(name: '0_btn').empty?
          Button.all
        end

        # User.all.max_by { |user| user.created_at }

        User.all.each do |user|

        # User.all.each_with_index do |user, index|
        # return if index > 0

          binding.pry

          bot.api.send_message(chat_id: user.chat_id, text: user.first_name.to_s + getting_msg['welcome_msg'].to_s)
          bot.api.send_message(chat_id: user.chat_id, text: getting_msg['desc_msg'])

            # buttons array
            kb = getting_btn.map do |button|
            Telegram::Bot::Types::InlineKeyboardButton.new(text: button.description, callback_data: button.button_value)
            end

          markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
          bot.api.send_message(chat_id: user.chat_id, text: user.first_name + getting_msg['req_msg'], reply_markup: markup)
        end
      end
  end
end
