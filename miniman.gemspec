# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'miniman/version'

Gem::Specification.new do |spec|
  spec.name          = "miniman"
  spec.version       = Miniman::VERSION
  spec.authors       = ["Hao Wei"]
  spec.email         = ["imwillmouse@gmail.com"]
  spec.description   = "show what minitest can do in your terminal"
  spec.summary       = "Helper for minitest"
  spec.homepage      = "http://github.com/weih/miniman"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.0"
end
