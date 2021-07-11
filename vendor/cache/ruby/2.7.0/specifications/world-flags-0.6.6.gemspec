# -*- encoding: utf-8 -*-
# stub: world-flags 0.6.6 ruby lib

Gem::Specification.new do |s|
  s.name = "world-flags".freeze
  s.version = "0.6.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kristian Mandrup".freeze]
  s.date = "2014-04-16"
  s.description = "Use world flag icons in your Rails app".freeze
  s.email = "kmandrup@gmail.com".freeze
  s.extra_rdoc_files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.homepage = "http://github.com/kristianmandrup/world-flags".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.22".freeze
  s.summary = "World flags as sprites".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<hashie>.freeze, [">= 1.2"])
    s.add_runtime_dependency(%q<i18n>.freeze, [">= 0.6"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 2.8.0"])
    s.add_development_dependency(%q<rdoc>.freeze, [">= 3.12"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.1.0"])
    s.add_development_dependency(%q<jeweler>.freeze, [">= 1.8.3"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0.5"])
  else
    s.add_dependency(%q<hashie>.freeze, [">= 1.2"])
    s.add_dependency(%q<i18n>.freeze, [">= 0.6"])
    s.add_dependency(%q<rspec>.freeze, [">= 2.8.0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 3.12"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.1.0"])
    s.add_dependency(%q<jeweler>.freeze, [">= 1.8.3"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0.5"])
  end
end
