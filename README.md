# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:
* rails about
    About application's environment
  
    Rails version             6.1.3.2
    Ruby version              ruby 3.1.1
    RubyGems version          3.2.23
    Rack version              2.2.3
    JavaScript Runtime        Node.js (V8)
    Middleware                ActionDispatch::HostAuthorization, Rack::Sendfile, ActionDispatch::Static, ActionDispatch::Executor, ActiveSupport::Cache::Strategy::LocalCache::Middleware, Rack::Runtime, Rack::MethodOverride, ActionDispatch::RequestId, ActionDispatch::RemoteIp, Sprockets::Rails::QuietAssets, Rails::Rack::Logger, ActionDispatch::ShowExceptions, WebConsole::Middleware, ActionDispatch::DebugExceptions, ActionDispatch::ActionableExceptions, ActionDispatch::Reloader, ActionDispatch::Callbacks, ActiveRecord::Migration::CheckPending, ActionDispatch::Cookies, ActionDispatch::Session::CookieStore, ActionDispatch::Flash, ActionDispatch::ContentSecurityPolicy::Middleware, ActionDispatch::PermissionsPolicy::Middleware, Rack::Head, Rack::ConditionalGet, Rack::ETag, Rack::TempfileReaper
    Application root          /home/enextus/projects/2happy_bot
    Environment               development
    Database adapter          postgresql
    Database schema version   20180417063537

* System dependencies 

        Bundler       2.2.23
        Platforms   ruby, x86_64-linux
        Ruby          3.0.2p107 (2021-07-07 revision 0db68f023372b634603c74fca94588b457be084c) [x86_64-linux]
        Full Path   /home/enextus/.rbenv/versions/3.0.2/bin/ruby
        Config Dir  /home/enextus/.rbenv/versions/3.0.2/etc
        RubyGems      3.2.23
        Gem Home    /home/enextus/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0
        Gem Path    /home/enextus/.gem/ruby/3.0.0:/home/enextus/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0
        User Home   /home/enextus
        User Path   /home/enextus/.gem/ruby/3.0.0
        Bin Dir     /home/enextus/.rbenv/versions/3.0.2/bin
        
        Tools         
        Git         2.25.1
        rbenv       rbenv 1.1.1



* Configuration

        Environment
        
            Ruby     ruby 3.1.1
            Rubygems 3.2.23
            Bundler  N/A
            Command  /home/enextus/.rbenv/versions/3.0.2/bin/cap production doctor
        
        Gems
        
            capistrano            3.17
            airbrussh             1.4.0
            rake                  13.0.6
            sshkit                1.21.2
            net-ssh               6.1.0
            capistrano-bundler    2.0.1
            capistrano-passenger  0.2.1
            capistrano-rails      1.6.1
            capistrano-ssh-doctor 1.0.0
        
        Variables
        
        00:00 doctor:variables
        01 bundle exec whenever -i myapp_production --update-crontab --load-file config/schedule.rb --set environment=production
        01 [write] crontab file updated
        ✔ 01 deploy@178.62.220.123 1.366s
        :application                            "myapp"
        :assets_manifests                       [#<Pathname:/home/deploy/www/myapp/current/public/assets/.sprockets-manifest*>, #<Pathname:/home/deploy/www/myapp/current/public/assets/manifest*.*>]
        :assets_prefix                          "assets"
        :assets_roles                           [:web]
        :branch                                 "happy_bot"
        :bundle_bins                            ["gem", "rake", "rails", :passenger, :"passenger-config", :"passenger-status"]
        :bundle_binstubs                        nil
        :bundle_check_before_install            true
        :bundle_clean_options                   ""
        :bundle_config                          {:deployment=>true}
        :bundle_env_variables                   {}
        :bundle_flags                           "--quiet"
        :bundle_gemfile                         nil
        :bundle_jobs                            4
        :bundle_path                            #<Pathname:/home/deploy/www/myapp/shared/bundle>
        :bundle_roles                           :all
        :bundle_servers                         [#<Capistrano::Configuration::Server:0x000055bd84d34810 @keys=[], @local=false, @user="deploy", @hostname="178.62.220.123", @port=nil, @properties=#<Capistrano::Configuration::Server::Properties:0x000055bd84d35080 @properties={}, @roles=#<Set: {:app, :db, :web}>>>]
        :bundle_without                         "development:test"
        :conditionally_migrate                  false
        :default_env                            {}
        :deploy_to                              "/home/deploy/www/myapp"
        :format                                 :airbrussh
        :git_environmental_variables            {:git_askpass=>"/bin/echo", :git_ssh=>"/tmp/git-ssh-2b9a1547b932a415670f.sh"}
        :git_max_concurrent_connections         10
        :git_shallow_clone                      false
        :git_wait_interval                      0
        :git_wrapper_path                       "/tmp/git-ssh-2b9a1547b932a415670f.sh"
        :keep_releases                          3
        :linked_dirs                            ["log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/assets"]
        :linked_files                           ["config/database.yml", "config/secrets.yml", ".env"]
        :local_user                             "enextus"
        :log_level                              :debug
        :migration_command                      "db:migrate"
        :migration_role                         :db
        :migration_servers                      #<Capistrano::Configuration::Server:0x000055bd84d34810 @keys=[], @local=false, @user="deploy", @hostname="178.62.220.123", @port=nil, @properties=#<Capistrano::Configuration::Server::Properties:0x000055bd84d35080 @properties={}, @roles=#<Set: {:app, :db, :web}>>>
        :passenger_environment_variables        {}
        :passenger_in_gemfile                   true
        :passenger_restart_command              "passenger-config restart-app"
        :passenger_restart_limit                2
        :passenger_restart_options              "/home/deploy/www/myapp --ignore-app-not-running"
        :passenger_restart_runner               :sequence
        :passenger_restart_wait                 5
        :passenger_restart_with_sudo            false
        :passenger_roles                        :app
        :passenger_rvm_ruby_version             nil
        :pty                                    false
        :rails_env                              :production
        :rbenv_path                             "/home/enextus/.rbenv"
        :rbenv_prefix                           "RBENV_ROOT=/home/enextus/.rbenv RBENV_VERSION=3.0.2 /home/enextus/.rbenv/bin/rbenv exec"
        :rbenv_ruby                             "3.1.1"
        :rbenv_type                             :user
        :repo_url                               "git@github.com:enextus/2_happy_bot.git"
        :stage                                  :production
        :tmp_dir                                "/tmp"
        :whenever_clear_flags                   "--clear-crontab myapp"
        :whenever_command                       [#<Thread:0x000055bd87993488 /home/enextus/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/sshkit-1.21.2/lib/sshkit/runners/parallel.rb:10 dead>]
        :whenever_command_environment_variables {:rails_env=>:production}
        :whenever_environment                   :production
        :whenever_identifier                    "myapp"
        :whenever_load_file                     nil
        :whenever_path                          #<Pathname:/home/deploy/www/myapp/current>
        :whenever_roles                         :db
        :whenever_update_flags                  "--update-crontab myapp --set environment=production"
        :whenever_variables                     "environment=production"
        
        Servers (1)
        
            deploy@178.62.220.123 [:app, :db, :web]

* Middleware
        use ActionDispatch::HostAuthorization
        use Rack::Sendfile
        use ActionDispatch::Static
        use ActionDispatch::Executor
        use ActiveSupport::Cache::Strategy::LocalCache::Middleware
        use Rack::Runtime
        use Rack::MethodOverride
        use ActionDispatch::RequestId
        use ActionDispatch::RemoteIp
        use Sprockets::Rails::QuietAssets
        use Rails::Rack::Logger
        use ActionDispatch::ShowExceptions
        use WebConsole::Middleware
        use ActionDispatch::DebugExceptions
        use ActionDispatch::ActionableExceptions
        use ActionDispatch::Reloader
        use ActionDispatch::Callbacks
        use ActiveRecord::Migration::CheckPending
        use ActionDispatch::Cookies
        use ActionDispatch::Session::CookieStore
        use ActionDispatch::Flash
        use ActionDispatch::ContentSecurityPolicy::Middleware
        use ActionDispatch::PermissionsPolicy::Middleware
        use Rack::Head
        use Rack::ConditionalGet
        use Rack::ETag
        use Rack::TempfileReaper
        run HappyBot::Application.routes
  
* Rails routes

        Prefix Verb     URI Pattern Controller#Action
        GET|POST /           users#getting_user_message
        sidekiq_web          /sidekiq    Sidekiq::Web

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

    cap production doctor
    cap production deploy:check
    cap production deploy
* ...
# happy_bot
