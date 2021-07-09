# -*- encoding: utf-8 -*-
# stub: capistrano-ssh-doctor 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-ssh-doctor".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bruno Sutic".freeze]
  s.date = "2014-09-30"
  s.description = "This plugin helps you setup and debug `ssh-doctor` forwarding for Capistrano\ndeployment.\nIt peforms a number of checks on the local machine as well as on the\nservers. Report output with suggested next steps is provided in case there\nare any errors with the setup.\n".freeze
  s.email = ["bruno.sutic@gmail.com".freeze]
  s.homepage = "https://github.com/capistrano-plugins/capistrano-ssh-doctor".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.22".freeze
  s.summary = "This plugin helps you setup and debug `ssh-doctor` forwarding for Capistrano deployment.".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<capistrano>.freeze, [">= 3.1"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<capistrano>.freeze, [">= 3.1"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
