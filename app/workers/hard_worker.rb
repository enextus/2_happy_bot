require "active_support/all"
require 'sidekiq'

class HardWorker

  include Sidekiq::Worker

  def perform(how_hard="super hard", how_long=1)

    sleep 7

    puts "-------------------------------------------------------------"
    puts "Worker N: #{how_hard}"
    puts "sleep = #{how_long}"
    puts "N:#{Time.zone.now.to_s[16..18]}"
    puts "Актуальное время:" + Time.zone.now.to_s
    puts "-------------------------------------------------------------"


  end
end


#  bundle exec sidekiq -r ./app/workers/hard_worker.rb

# ./bin/sidekiq -r ./hard_worker.rb

# irb -r ./hard_worker.rb
# HardWorker.perform_async "like a dog", 3

# bundle exec sidekiq
# HardWorker.perform_async
# cd ~/projects/happy_bot/app/workers
# enextus@enextus:~/projects/happy_bot/app/workers$ sidekiq -r ./hard_worker.rb

=begin
2018-03-23T12:03:53.609Z 27030 TID-gsyo4x8uq INFO: Bye!
enextus@enextus:~/projects/happy_bot$ rails g sidekiq:worker New
Running via Spring preloader in process 887
      create  app/workers/new_worker.rb
      create  test/workers/new_worker_test.rb
enextus@enextus:~/projects/happy_bot$ rails g sidekiq:worker Report

Running via Spring preloader in process 932
      create  app/workers/report_worker.rb
      create  test/workers/report_worker_test.rb
enextus@enextus:~/projects/happy_bot$
enextus@enextus:~/projects/happy_bot$


#
#
require "active_support/all"
require 'sidekiq'

class ReportWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(start_date, end_date)
    puts "Sidekiq worker generating a report from #{start_date} to #{end_date}"
  end
end

=end
#
