set :chronic_options, hours24: true
# set :environment, 'development'
log_dir = File.expand_path("../log/", __FILE__)

# adds ">> cron.log 2> error.log" to all commands

set :output, {
  :error    => File.join(log_dir, "error.cron.log"),
  :standard => File.join(log_dir, "cron.log")
}

# every 1.day, at: '15:00' do
#   runner "ReportingWorker.perform_async '11.05.2018 reporting worker', 5 ", :output => 'cron.log'
# end
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

every 4.minute do
  runner "ReportingWorker.perform_async ' 25.08.2019 reporting worker', 2", :output # => File.join(log_dir, "cron.log")
end

# every :hour do # Many shortcuts available: :hour, :day, :month, :year, :reboot
#  runner "SomeModel.ladeeda"
#  runner "HardWorker.perform_async "like a dog", 3"
# end
