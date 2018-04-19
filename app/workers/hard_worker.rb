require "active_support/all"
require 'sidekiq'

class HardWorker

  include Sidekiq::Worker

  def perform(how_hard="super hard", how_long=5)

    sleep 100

    puts "-------------------------------------------------------------"
    puts "Worker N: #{how_hard}"
    puts "sleep = #{how_long}"
    puts "N:#{Time.zone.now.to_s[16..18]}"
    puts "Актуальное время:" + Time.zone.now.to_s
    puts "-------------------------------------------------------------"


  end
end
