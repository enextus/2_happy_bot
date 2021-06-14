# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'actionview', '= 6.1.3.2'
gem 'airbrussh', '~> 1.4'

gem 'bootsnap',   '>= 1.2', require: false
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem 'bundler', '~> 2.2', '>= 2.2.20'

gem 'concurrent-ruby', '~> 1.1', '>= 1.1.9'

gem 'dotenv', '~> 2.7', '>= 2.7.1'

gem 'dry-inflector', '~> 0.2.0'

gem 'dotenv-rails', groups: %i[development test]
gem 'freeze', '~> 0.1.0'

gem 'font_awesome', '~> 3.101'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.7'

gem 'font-awesome-sass', '~> 5.15', '>= 5.15.1'

gem 'font-awesome-sass-rails', '~> 3.0', '>= 3.0.2.2'


gem 'materialize-sass', '~> 0.96.1'
gem 'rails-ujs', '~> 0.1.0'
# gem 'gem-that-requires-env-variables'
gem 'actionpack', '>= 6.1.3.2'
gem 'activerecord', '>= 6.1.3.1'
gem 'bootstrap', '~> 5.0', '>= 5.0.1'
gem 'net-ssh', '~> 6.1'
gem 'nokogiri', '~> 1.11', '>= 1.11.7'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '= 6.1.3.2'
gem 'railties', '~> 6.1', '>= 6.1.3.2'
gem 'rspec', '~> 3.10'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.2', '>= 1.2.3'

# Use Puma as the app server
gem 'puma', '~> 5.3', '>= 5.3.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'

gem 'sprockets', '~> 4.0', '>= 4.0.2'
gem 'sprockets-rails', '~> 3.2', '>= 3.2.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.2'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.11', '>= 2.11.2'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.3', '>= 4.3.1'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1', '>= 3.1.16'
gem 'rack', '~> 2.2', '>= 2.2.3'
gem 'rubygems-update', '~> 3.2', '>= 3.2.20'

gem 'sassc', '~> 2.4'

gem 'sidekiq', '~> 6.2', '>= 6.2.1'

gem 'sidekiq-client-cli', '~> 0.1.7'

gem 'sshkit', '~> 1.21', '>= 1.21.2'

gem 'telegram-bot-ruby', '~> 0.16.0'

gem 'turbolinks', '~> 5.2', '>= 5.2.1'
gem 'uri', '~> 0.10.1'

gem 'whenever', '~> 1.0'
gem 'whenever-test', '~> 1.0', '>= 1.0.1'
gem 'world-flags', '~> 0.6.6'

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
