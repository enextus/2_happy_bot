# config valid only for current version of Capistrano
lock '3.14.1'
set :application, 'myapp'
set :repo_url, 'git@github.com:enextus/2_happy_bot.git'
set :branch, 'happy_bot'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/deploy/www/myapp'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml', '.env')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

set :whenever_command, -> {
  on roles(:app) do
    within current_path do
      execute :bundle, :exec, "whenever -i #{fetch(:application)}_#{fetch(:rails_env)} --update-crontab #{fetch(:rails_env) == "production" ? "" : "--load-file config/schedule.rb"} --set environment=#{fetch(:rails_env)}"
    end
  end
}

namespace :deploy do
  # desc "reload the database with seed data"
  # task :seed do
  #   run "cd #{current_path}; bundle exec rake db:seed RAILS_ENV=#{rails_env}"
  # end

  after :restart, :clear_cache do

    on roles(:app), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
      execute :sudo, :systemctl, :restart, :sidekiq
    end

  end
end
