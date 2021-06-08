# frozen_string_literal: true

# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks

require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

require 'capistrano/deploy'

# require 'capistrano/rvm'
require 'capistrano/rails'
require 'capistrano/rbenv'
# require 'capistrano/chruby'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/passenger'

require 'whenever/capistrano'

require 'capistrano/ssh_doctor'

set :whenever_command, 'bundle exec whenever'
set :rbenv_type, :user
set :rbenv_ruby, '3.0.1'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
