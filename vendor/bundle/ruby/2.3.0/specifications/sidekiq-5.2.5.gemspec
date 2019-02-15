# -*- encoding: utf-8 -*-
# stub: sidekiq 5.2.5 ruby lib

Gem::Specification.new do |s|
  s.name = "sidekiq"
  s.version = "5.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mike Perham"]
  s.date = "2019-01-08"
  s.description = "Simple, efficient background processing for Ruby."
  s.email = ["mperham@gmail.com"]
  s.executables = ["sidekiq", "sidekiqctl"]
  s.files = ["bin/sidekiq", "bin/sidekiqctl"]
  s.homepage = "http://sidekiq.org"
  s.licenses = ["LGPL-3.0"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2")
  s.rubygems_version = "2.5.1"
  s.summary = "Simple, efficient background processing for Ruby"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<redis>, ["< 5", ">= 3.3.5"])
      s.add_runtime_dependency(%q<connection_pool>, [">= 2.2.2", "~> 2.2"])
      s.add_runtime_dependency(%q<rack>, [">= 1.5.0"])
      s.add_runtime_dependency(%q<rack-protection>, [">= 1.5.0"])
    else
      s.add_dependency(%q<redis>, ["< 5", ">= 3.3.5"])
      s.add_dependency(%q<connection_pool>, [">= 2.2.2", "~> 2.2"])
      s.add_dependency(%q<rack>, [">= 1.5.0"])
      s.add_dependency(%q<rack-protection>, [">= 1.5.0"])
    end
  else
    s.add_dependency(%q<redis>, ["< 5", ">= 3.3.5"])
    s.add_dependency(%q<connection_pool>, [">= 2.2.2", "~> 2.2"])
    s.add_dependency(%q<rack>, [">= 1.5.0"])
    s.add_dependency(%q<rack-protection>, [">= 1.5.0"])
  end
end
