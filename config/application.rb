# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Include each railties manually, excluding `active_storage/engine`
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
# require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'
require 'rails/test_unit/railtie'
# https://mikerogers.io/2018/04/13/remove-activestorage-from-rails-5-2.html

require 'telegram/bot'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# Dotenv::Railtie.load

HOSTNAME = ENV['HOSTNAME']

module HappyBot
  # class Application < Rails::Application
  class Application < Rails::Application
    config.assets.paths << "#{Rails}/vendor/assets/fonts"

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.active_job.queue_adapter = :sidekiq

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
