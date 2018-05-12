# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

set :chronic_options, hours24: true

# adds ">> cron.log 2> error.log" to all commands

set :output, {:error => 'error.log', :standard => 'cron.log'}

# By default this would run the job every day at 3am
# every 1.day, at: '3:00' do
  # runner "HardWorker.perform_async "like a dog", 3"
# end

# every 1.day, at: '10:00' do
#   runner "ReportingWorker.perform_async '11.05.2018 reporting worker', 5 ", :output => 'cron.log'
# end

# every 1.day, at: '15:00' do
#   runner "ReportingWorker.perform_async '11.05.2018 reporting worker', 5 ", :output => 'cron.log'
# end

# every 1.day, at: '19:00' do
#   runner "ReportingWorker.perform_async '11.05.2018 reporting worker', 5 ", :output => 'cron.log'
# end

every 10.minute do
  runner "ReportingWorker.perform_async ' 12.05.2018 reporting worker', 2", :output => 'cron.log'
end

# every :hour do # Many shortcuts available: :hour, :day, :month, :year, :reboot
#  runner "SomeModel.ladeeda"
#  runner "HardWorker.perform_async "like a dog", 3"
# end

# 'log/cron.log'
