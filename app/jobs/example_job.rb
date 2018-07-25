class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
  end
end


# https://github.com/mperham/sidekiq/wiki/Active-Job
