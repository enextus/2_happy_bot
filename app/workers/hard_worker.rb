class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    puts 'Doing hard work'
  end
end

# bundle exec sidekiq
# redis-server
