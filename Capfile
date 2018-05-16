# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'
require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

# Include tasks from other gems included in your Gemfile
#
#
# require 'capistrano/rvm'
require 'capistrano/rails'
require 'capistrano/rbenv'
# require 'capistrano/chruby'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/passenger'

# Capfile
require 'capistrano/sidekiq'
# equire 'capistrano/sidekiq/tasks/sidekiq.cap'

# https://github.com/seuros/capistrano-sidekiq/issues/27

set :rbenv_type, :user
set :rbenv_ruby, '2.5.0'
set :pty,  false

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
