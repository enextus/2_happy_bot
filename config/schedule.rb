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

set :chronic_options, hours24: true

# adds ">> cron.log 2> error.log" to all commands

set :output, {:error => 'error.cron.log', :standard => 'cron.log'}

# every 1.day, at: '15:00' do
#   runner "ReportingWorker.perform_async '11.05.2018 reporting worker', 5 ", :output => 'cron.log'
# end

every 59.minute do
  runner "ReportingWorker.perform_async ' 22.03.2019 reporting worker', 2", :output => 'cron.log'
end

# every :hour do # Many shortcuts available: :hour, :day, :month, :year, :reboot
#  runner "SomeModel.ladeeda"
#  runner "HardWorker.perform_async "like a dog", 3"
# end
