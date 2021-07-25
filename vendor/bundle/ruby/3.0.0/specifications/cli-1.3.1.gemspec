# -*- encoding: utf-8 -*-
# stub: cli 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "cli".freeze
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jakub Pastuszek".freeze]
  s.date = "2012-11-16"
  s.description = "Command Line Interface gem allows you to quickly specify command argument parser that will automatically generate usage, handle stdin, switches, options and arguments with default values and value casting".freeze
  s.email = "jpastuszek@gmail.com".freeze
  s.extra_rdoc_files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.homepage = "http://github.com/jpastuszek/cli".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.24".freeze
  s.summary = "Command line argument parser with stdin handling and usage generator".freeze

  s.installed_by_version = "3.2.24" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rspec>.freeze, ["~> 2.4"])
    s.add_development_dependency(%q<cucumber>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.2"])
    s.add_development_dependency(%q<jeweler>.freeze, ["~> 1.6.4"])
    s.add_development_dependency(%q<rcov>.freeze, [">= 0"])
    s.add_development_dependency(%q<rdoc>.freeze, ["~> 3.9"])
    s.add_development_dependency(%q<ruby-ip>.freeze, ["~> 0.9"])
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 2.4"])
    s.add_dependency(%q<cucumber>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.2"])
    s.add_dependency(%q<jeweler>.freeze, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>.freeze, [">= 0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 3.9"])
    s.add_dependency(%q<ruby-ip>.freeze, ["~> 0.9"])
  end
end
