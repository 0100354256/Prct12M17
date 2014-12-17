# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Prct12M17/version'

Gem::Specification.new do |spec|
  spec.name          = "Prct12M17"
  spec.version       = Prct12M17::VERSION
  spec.authors       = ["Sergio Gonzalez", "Romina Martin"]
  spec.email         = ["alu0100354256@ull.edu.es", "alu0100696776@ull.edu.es"]
  spec.description   = "Gema practica 12"
  spec.summary       = ""
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "coveralls"
end
