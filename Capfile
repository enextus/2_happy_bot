# frozen_string_literal: true

# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

require 'capistrano/scm/git'

install_plugin Capistrano::SCM::Git

# require 'capistrano/rvm'
require 'capistrano/rails'

# require 'capistrano/rbenv'

if Rake.application.top_level_tasks.first == "staging"
  require 'capistrano/rbenv'
end


# require 'capistrano/chruby'
require 'capistrano/bundler'
require 'capistrano/rails/assets'

require 'capistrano/rails/migrations'
require 'capistrano/passenger'

require 'whenever/capistrano'

require 'capistrano/ssh_doctor'

set :whenever_command, 'bundle exec whenever'
set :rbenv_type, :user

set :rbenv_ruby, '3.0.2'

set :rbenv_path, '/home/enextus/.rbenv'

set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"


# Load custom tasks from `lib/capistrano/tasks` if you have any defined
# install_plugin Capistrano::Puma::Daemon
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
