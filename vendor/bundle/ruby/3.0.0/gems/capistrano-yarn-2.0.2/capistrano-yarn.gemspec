# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-yarn'
  spec.version       = '2.0.2'
  spec.authors       = ['Jesus Arnaiz']
  spec.email         = ['j.arnaiz@gmail.com']
  spec.description   = 'based on capistrano/npm gem'
  spec.summary       = 'yarn support for Capistrano 3.x'
  spec.homepage      = 'https://github.com/j-arnaiz/capistrano-yarn'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '~> 3.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
