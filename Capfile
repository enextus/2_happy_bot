# frozen_string_literal: true

# Load DSL and set up stages
require 'capistrano/setup'

require 'capistrano/sidekiq'
install_plugin Capistrano::Sidekiq # Default sidekiq tasks

# Include default deployment tasks
require 'capistrano/deploy'

# This will add tasks to your deploy process
require 'capistrano/rails'
require 'capistrano/passenger'
require 'capistrano/rbenv' if Rake.application.top_level_tasks.first == 'staging'
require 'capistrano/yarn'
require 'capistrano/bundler'

# something
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/ssh_doctor'

# whenever
require 'whenever/capistrano'
set :whenever_command, 'bundle exec whenever'

# rbenv add these lines:
set :rbenv_type, :user
set :rbenv_ruby, '3.0.2'
set :rbenv_path, '/home/enextus/.rbenv'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"

# Load the SCM plugin appropriate to your project:
require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
