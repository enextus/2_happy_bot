# -*- encoding: utf-8 -*-
# stub: capistrano-passenger 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-passenger"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Isaac Betesh"]
  s.date = "2015-12-08"
  s.description = "Passenger support for Capistrano 3.x"
  s.email = ["iybetesh@gmail.com"]
  s.homepage = "https://github.com/capistrano/passenger"
  s.licenses = ["MIT"]
  s.post_install_message = "==== Release notes for capistrano-passenger ====\npassenger once had only one way to restart: `touch tmp/restart.txt`\nBeginning with passenger v4.0.33, a new way was introduced: `passenger-config restart-app`\n\nThe new way to restart was not initially practical for everyone,\nsince for versions of passenger prior to v5.0.10,\nit required your deployment user to have sudo access for some server configurations.\n\ncapistrano-passenger gives you the flexibility to choose your restart approach, or to rely on reasonable defaults.\n\nIf you want to restart using `touch tmp/restart.txt`, add this to your config/deploy.rb:\n\n    set :passenger_restart_with_touch, true\n\nIf you want to restart using `passenger-config restart-app`, add this to your config/deploy.rb:\n\n    set :passenger_restart_with_touch, false # Note that `nil` is NOT the same as `false` here\n\nIf you don't set `:passenger_restart_with_touch`, capistrano-passenger will check what version of passenger you are running\nand use `passenger-config restart-app` if it is available in that version.\n\nIf you are running passenger in standalone mode, it is possible for you to put passenger in your\nGemfile and rely on capistrano-bundler to install it with the rest of your bundle.\nIf you are installing passenger during your deployment AND you want to restart using `passenger-config restart-app`,\nyou need to set `:passenger_in_gemfile` to `true` in your `config/deploy.rb`.\n================================================\n"
  s.rubygems_version = "2.5.1"
  s.summary = "Passenger support for Capistrano 3.x"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, ["~> 3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<capistrano>, ["~> 3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<capistrano>, ["~> 3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
