# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'basecamp_ninja/version'

Gem::Specification.new do |s|
  s.name          = 'basecamp_ninja'
  s.version       = BasecampNinja::Version
  s.date          = '2013-11-19'
  s.summary       = "basecamp api"
  s.description   = "Basecamp API Ruby Wrapper"
  s.authors       = ["Jedford Seculles"]
  s.email         = 'jeds@sourcepad.com'
  s.files         = `git ls-files`.split($/)
  s.require_paths = ['lib']
  s.homepage      = ''
  s.license       = 'MIT'

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rspec"
  s.add_development_dependency "pry"
  s.add_development_dependency "rake"
  s.add_runtime_dependency "json"
  s.add_runtime_dependency "activesupport", "~> 4.0.0"
  s.add_runtime_dependency "representable"
end