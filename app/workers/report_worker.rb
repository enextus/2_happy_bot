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

        User.all.each do |user|

          bot.api.send_message(chat_id: user.chat_id, text: getting_msg['welcome_msg'] + user.first_name)
          bot.api.send_message(chat_id: user.chat_id, text: getting_msg['desc_msg'])

        end
      end
  end
end
