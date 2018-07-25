job_type :sidekiq, "cd :path && RAILS_ENV=:environment /usr/local/bin/bundle exec /usr/local/bin/sidekiq-client :task :output"
set :chronic_options, hours24: true
set :output, error: 'error.log', standard: 'cron.log'
set :environment, :development

every 1.day, at: '12:00' do
  runner "ReportingWorker.perform_async '25.05.2018 reporting worker', 5 ", :output => 'cron.log'
end

# every 10.minutes do
#   sidekiq 'push ReportingWorker'
# end
