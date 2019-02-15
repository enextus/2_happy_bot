# -*- encoding: utf-8 -*-
# stub: telegram-bot-ruby 0.8.6.1 ruby lib

Gem::Specification.new do |s|
  s.name = "telegram-bot-ruby"
  s.version = "0.8.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alexander Tipugin"]
  s.bindir = "exe"
  s.date = "2017-12-11"
  s.email = ["atipugin@gmail.com"]
  s.homepage = "https://github.com/atipugin/telegram-bot"
  s.rubygems_version = "2.5.1"
  s.summary = "Ruby wrapper for Telegram's Bot API"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, [">= 0"])
      s.add_runtime_dependency(%q<virtus>, [">= 0"])
      s.add_runtime_dependency(%q<inflecto>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.9"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.48.1"])
      s.add_development_dependency(%q<rspec>, ["~> 3.4"])
      s.add_development_dependency(%q<rubocop-rspec>, ["~> 1.8"])
    else
      s.add_dependency(%q<faraday>, [">= 0"])
      s.add_dependency(%q<virtus>, [">= 0"])
      s.add_dependency(%q<inflecto>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.9"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rubocop>, ["~> 0.48.1"])
      s.add_dependency(%q<rspec>, ["~> 3.4"])
      s.add_dependency(%q<rubocop-rspec>, ["~> 1.8"])
    end
  else
    s.add_dependency(%q<faraday>, [">= 0"])
    s.add_dependency(%q<virtus>, [">= 0"])
    s.add_dependency(%q<inflecto>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.9"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rubocop>, ["~> 0.48.1"])
    s.add_dependency(%q<rspec>, ["~> 3.4"])
    s.add_dependency(%q<rubocop-rspec>, ["~> 1.8"])
  end
end
