# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina/rpush/version'

Gem::Specification.new do |spec|
  spec.name          = 'mina-rpush'
  spec.version       = Mina::Rpush::VERSION
  spec.authors       = ['Michał Matyas']
  spec.email         = ['michal@higher.lv']
  spec.summary       = 'Mina tasks for Rpush deployment.'
  spec.description   = ''
  spec.homepage      = 'https://github.com/d4rky-pl/mina-rpush'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'rpush'
end
