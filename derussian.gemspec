# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'derussian/version'
require 'yaml'

Gem::Specification.new do |spec|
  spec.name          = "derussian"
  spec.version       = Derussian::VERSION
  spec.authors       = ["Sergey Vardanyan"]
  spec.email         = ["rakot.ss@gmail.com"]
  spec.description   = %q{Delocalize dates on russian to english one}
  spec.summary       = %q{Gem for using russian dates with Chronic gem}
  spec.homepage      = "http://rakot.ru"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
