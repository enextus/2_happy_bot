# -*- encoding: utf-8 -*-
# stub: cli 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "cli"
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jakub Pastuszek"]
  s.date = "2012-11-16"
  s.description = "Command Line Interface gem allows you to quickly specify command argument parser that will automatically generate usage, handle stdin, switches, options and arguments with default values and value casting"
  s.email = "jpastuszek@gmail.com"
  s.extra_rdoc_files = ["LICENSE.txt", "README.md"]
  s.files = ["LICENSE.txt", "README.md"]
  s.homepage = "http://github.com/jpastuszek/cli"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Command line argument parser with stdin handling and usage generator"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.4"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.2"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.9"])
      s.add_development_dependency(%q<ruby-ip>, ["~> 0.9"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.4"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.2"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.9"])
      s.add_dependency(%q<ruby-ip>, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.4"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.2"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.9"])
    s.add_dependency(%q<ruby-ip>, ["~> 0.9"])
  end
end
