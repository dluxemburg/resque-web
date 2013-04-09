# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'resque-web/version'

Gem::Specification.new do |spec|
  spec.name          = "resque-web"
  spec.version       = ResqueWeb::VERSION
  spec.authors       = ["Resque"]
  spec.email         = ["resque@resque.com"]
  spec.description   = "Resque Web"
  spec.summary       = "Resque...web"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'twitter-bootstrap-rails'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
