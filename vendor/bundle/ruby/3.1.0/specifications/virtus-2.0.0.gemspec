# -*- encoding: utf-8 -*-
# stub: virtus 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "virtus".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Piotr Solnica".freeze]
  s.date = "2021-06-07"
  s.description = "Attributes on Steroids for Plain Old Ruby Objects".freeze
  s.email = ["piotr.solnica@gmail.com".freeze]
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze, "TODO.md".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze, "TODO.md".freeze]
  s.homepage = "https://github.com/solnic/virtus".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "3.3.3".freeze
  s.summary = "Attributes on Steroids for Plain Old Ruby Objects".freeze

  s.installed_by_version = "3.3.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<descendants_tracker>.freeze, ["~> 0.0", ">= 0.0.3"])
    s.add_runtime_dependency(%q<coercible>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<axiom-types>.freeze, ["~> 0.1"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<descendants_tracker>.freeze, ["~> 0.0", ">= 0.0.3"])
    s.add_dependency(%q<coercible>.freeze, ["~> 1.0"])
    s.add_dependency(%q<axiom-types>.freeze, ["~> 0.1"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
