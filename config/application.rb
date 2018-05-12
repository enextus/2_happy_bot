require_relative 'boot'
<<<<<<< HEAD

require 'rails/all'
=======
require 'rails/all'
require 'telegram/bot'
>>>>>>> happy_bot

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HappyBot
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

<<<<<<< HEAD
=======
    config.active_job.queue_adapter = :sidekiq

>>>>>>> happy_bot
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
