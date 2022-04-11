# -*- encoding: utf-8 -*-
# stub: capistrano-yarn 2.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-yarn".freeze
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jesus Arnaiz".freeze]
  s.date = "2016-10-19"
  s.description = "based on capistrano/npm gem".freeze
  s.email = ["j.arnaiz@gmail.com".freeze]
  s.homepage = "https://github.com/j-arnaiz/capistrano-yarn".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.0.dev".freeze
  s.summary = "yarn support for Capistrano 3.x".freeze

  s.installed_by_version = "3.4.0.dev" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<capistrano>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<capistrano>.freeze, ["~> 3.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
