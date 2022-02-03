# -*- encoding: utf-8 -*-
# stub: whenever-test 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "whenever-test".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rafael Sales".freeze]
  s.date = "2016-08-15"
  s.description = "Whenever gem doesn't provide test support, so whenever-test makes that possible".freeze
  s.email = ["rafaelcds@gmail.com".freeze]
  s.homepage = "https://github.com/heartbits/whenever-test".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.3".freeze
  s.summary = "Test Whenever scheduled jobs".freeze

  s.installed_by_version = "3.3.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<whenever>.freeze, [">= 0"])
  else
    s.add_dependency(%q<whenever>.freeze, [">= 0"])
  end
end
