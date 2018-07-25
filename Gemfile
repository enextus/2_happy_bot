source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# gem 'bootsnap', github: 'ojab/bootsnap', require: false
gem 'activesupport'
gem 'i18n'
gem 'dotenv', '~> 2.4'
# Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
gem 'listen', '~> 3.1', '>= 3.1.5'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11', '>= 3.11.4'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0', '>= 5.0.7'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.1', '>= 4.1.10'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2', '>= 4.2.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.1', '>= 5.1.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0', '>= 4.0.1'
# Use Capistrano for deployment
gem 'sidekiq', '~> 5.1', '>= 5.1.3'
gem 'sidekiq-client-cli', '~> 0.1.7'
gem 'telegram-bot-ruby', '~> 0.8.6.1'
gem 'whenever', '~> 0.10.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 10.0', '>= 10.0.2', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.1'
  gem 'dotenv-rails', '~> 2.4'
  gem 'pry', '~> 0.11.3'
  gem 'selenium-webdriver', '~> 3.12'
end

group :development do
  gem 'capistrano', '~> 3.10', '>= 3.10.2'
  gem 'capistrano-bundler', '~> 1.3'
  gem 'capistrano-passenger', '~> 0.2.0'
  gem 'capistrano-rails', '~> 1.3', '>= 1.3.1'
  gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.3'
  gem 'capistrano-sidekiq', '~> 1.0', '>= 1.0.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.0', '>= 2.0.2'
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
  gem 'web-console', '~> 3.6', '>= 3.6.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '~> 1.2018', '>= 1.2018.5', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
