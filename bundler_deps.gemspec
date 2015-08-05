# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bundler_deps/version'

Gem::Specification.new do |spec|
  spec.name          = "bundler_deps"
  spec.version       = BundlerDeps::VERSION
  spec.authors       = ["bibendi"]
  spec.email         = ["merkushin.m.s@gmail.com"]
  spec.summary       = "bundler deps"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rails', '>= 3.1', '< 4.1'
  spec.add_runtime_dependency 'apress-regions', '>= 0.1.3'
  spec.add_runtime_dependency 'apress-rubrics', '>= 0.2.0'
  spec.add_runtime_dependency 'apress-sphinx_loader', '>= 1.1.2'

  spec.add_development_dependency 'bundler', '>= 1.6'
  spec.add_development_dependency 'rake', '>= 10.0'
end
