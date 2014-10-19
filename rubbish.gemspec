# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubbish/version'

Gem::Specification.new do |spec|
  spec.name          = "rubbish"
  spec.version       = Rubbish::VERSION
  spec.authors       = ["William Clifford"]
  spec.email         = ["wobh@yahoo.com"]
  spec.summary       = %q{Ruby Experiments}
  spec.description   = %q{This is full of experimental code. You shouldn't use it.}
  spec.homepage      = "https://github.com/wobh/rubbish"
  spec.license       = "Look, but don't touch."

  spec.files         = %x{git ls-files -z}.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry-nav'
end
