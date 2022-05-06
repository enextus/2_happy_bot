# -*- encoding: utf-8 -*-
# stub: sidekiq-client-cli 0.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "sidekiq-client-cli".freeze
  s.version = "0.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Adil Haritah".freeze]
  s.date = "2014-09-10"
  s.description = "Command line client for Sidekiq. Push worker classes to queue from the cli ...".freeze
  s.email = ["haritahadil@gmail.com".freeze]
  s.executables = ["sidekiq-client".freeze]
  s.files = ["bin/sidekiq-client".freeze]
  s.homepage = "https://github.com/didil/sidekiq-client-cli".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.13".freeze
  s.summary = "Command line client for Sidekiq".freeze

  s.installed_by_version = "3.3.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<sidekiq>.freeze, [">= 2.15"])
    s.add_runtime_dependency(%q<cli>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<sidekiq>.freeze, [">= 2.15"])
    s.add_dependency(%q<cli>.freeze, [">= 0"])
  end
end
