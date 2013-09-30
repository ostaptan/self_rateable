# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'self_rateable/version'

Gem::Specification.new do |spec|
  spec.name          = "self_rateable"
  spec.version       = SelfRateable::VERSION
  spec.authors       = ["ostaptan"]
  spec.email         = ["otan256@gmail.com"]
  spec.description   = %q{Clean, powerful, customizable, simple, configurable, gem for displaying and handling ratings, likes, or stars for ActiveRecord model.}
  spec.summary       = %q{Gem for displaying and handling ratings, likes, or stars for ActiveRecord model.}
  spec.homepage      = "https://github.com/ostaptan/self_rateable"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
