# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'staff/version'

Gem::Specification.new do |spec|
  spec.name          = "staff"
  spec.version       = Staff::VERSION
  spec.authors       = ["Norbert Melzer"]
  spec.email         = ["timmelzer@gmail.com"]
  spec.summary       = %q{A ruby-roguelike framework}
#  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     "chingu",   "~> 0.8.1"

  spec.add_development_dependency "bundler",  "~> 1.5"
  spec.add_development_dependency "rake"
end
