# frozen_string_literal: true

source 'https://rubygems.org'


gem 'rake', '~> 13.0', '>= 13.0.6'

# #####################################################################################################################

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# #####################################################################################################################

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1', '>= 6.1.3.2'
gem 'rack', '~> 2.2', '>= 2.2.3'
gem 'railties', '~> 6.1', '>= 6.1.3.2'
gem 'rspec', '~> 3.10'

# #####################################################################################################################

gem 'actionpack', '~> 6.1', '>= 6.1.3.2'
gem 'actionview', '= 6.1.3.2'
gem 'activerecord', '~> 6.1', '>= 6.1.3.2'
gem 'activesupport', '~> 6.1', '>= 6.1.3.2'

gem 'airbrussh', '~> 1.4'
gem 'autoprefixer-rails', '~> 10.2', '>= 10.2.5.1'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1', '>= 3.1.16'
# gem 'bootstrap', '~> 5.0', '>= 5.0.1'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0'
gem 'concurrent-ruby', '~> 1.1', '>= 1.1.9'
gem 'dotenv', '~> 2.7', '>= 2.7.1'
gem 'dotenv-rails', groups: %i[development test]
gem 'dry-inflector', '~> 0.2.1'
gem 'faraday', '~> 1.5'
gem 'ffi', '~> 1.9', '>= 1.9.10'
gem 'freeze', '~> 0.1.0'
gem 'i18n', '~> 1.8', '>= 1.8.10'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.11', '>= 2.11.2'
gem 'minitest', '~> 5.14', '>= 5.14.4'
gem 'net-ssh', '~> 6.1'
gem 'nokogiri', '~> 1.11', '>= 1.11.7'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.2', '>= 1.2.3'

# Use Puma as the app server
gem 'puma', '~> 5.3', '>= 5.3.2'
gem 'popper_js', '~> 2.9', '>= 2.9.2'
gem 'rails-ujs', '~> 0.1.0'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.3', '>= 4.3.1'
gem 'rexml', '~> 3.2', '>= 3.2.5'
gem 'rubygems-update', '~> 3.2', '>= 3.2.20'
gem 'sidekiq', '~> 6.2', '>= 6.2.1'
gem 'sidekiq-client-cli', '~> 0.1.7'
gem 'sprockets', '~> 3.5', '>= 3.5.2'
gem 'sprockets-rails', '~> 3.2', '>= 3.2.2'
gem 'sshkit', '~> 1.21', '>= 1.21.2'
gem 'telegram-bot-ruby', '~> 0.16.0'
gem 'thor', '~> 1.1'
gem 'turbolinks', '~> 5.2', '>= 5.2.1'
gem 'tzinfo', '~> 2.0', '>= 2.0.4'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.2'
gem 'uri', '~> 0.10.1'
gem 'whenever', '~> 1.0'
gem 'whenever-test', '~> 1.0', '>= 1.0.1'
gem 'world-flags', '~> 0.6.6'
gem 'zeitwerk', '~> 2.4', '>= 2.4.2'

# #####################################################################################################################

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.35', '>= 3.35.3'
  gem 'pry', '~> 0.14.1'
  gem 'rubocop-rails', '~> 2.10', '>= 2.10.1'
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.7'
end

group :development do
  gem 'capistrano', '~> 3.16.0'
  gem 'capistrano-bundler', '~> 2.0', '>= 2.0.1'
  gem 'capistrano-passenger', '~> 0.2.1'
  gem 'capistrano-rails', '~> 1.6', '>= 1.6.1'
  gem 'capistrano-rbenv', '~> 2.2'
  gem 'capistrano-ssh-doctor', '~> 1.0'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.5', '>= 3.5.1'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.1', '>= 2.1.1'
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
  gem 'web-console', '~> 4.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

=begin
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
gem 'rails',                      '6.1.3.1'
gem 'rexml', '~> 3.2', '>= 3.2.5'
gem 'image_processing',           '1.9.3'
gem 'mini_magick',                '4.9.5'
gem 'active_storage_validations', '0.8.9'
gem 'bcrypt',                     '3.1.13'
gem 'faker',                      '2.11.0'
gem 'will_paginate',              '3.3.0'
gem 'bootstrap-will_paginate',    '1.0.0'
gem 'bootstrap-sass',             '3.4.1'
gem 'puma',                       '5.2.2'
gem 'sass-rails',                 '6.0.0'
gem 'webpacker',                  '5.2.1'
gem 'turbolinks',                 '5.2.1'
gem 'jbuilder',                   '2.10.0'
gem 'bootsnap',                   '1.7.2', require: false
gem 'factory_bot',                '6.1.0'
gem 'factory_bot_rails',          '6.1.0'
group :development, :test do
  # gem 'debase'
  # gem 'ruby-debug-ide'
  gem 'rspec-rails',        '5.0.1'
  gem 'simplecov',          '0.21.2'
  gem 'sqlite3',            '1.4.2'
  gem 'byebug',             '11.1.3', platforms: [:mri, :mingw, :x64_mingw]
end
group :development do
  gem 'web-console',        '4.1.0'
  gem 'rack-mini-profiler', '2.3.1'
  gem 'listen',             '3.4.1'
  gem 'spring',             '2.1.1'
end
group :test do
  gem 'capybara',                 '3.35.3'
  gem 'selenium-webdriver',       '3.142.7'
  gem 'webdrivers',               '4.6.0'
  gem 'rails-controller-testing', '1.0.5'
  gem 'minitest',                 '5.11.3'
  gem 'guard',                    '2.16.2'
  gem 'guard-minitest',           '2.4.6'
end
group :production do
  gem 'pg', '1.2.3'
  gem 'aws-sdk-s3', '1.87.0', require: false
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
=end