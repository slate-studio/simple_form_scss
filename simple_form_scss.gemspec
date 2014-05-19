# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_form_scss/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_form_scss"
  spec.version       = SimpleFormScss::Rails::VERSION
  spec.authors       = ["Alexander Kravets"]
  spec.email         = ["alex@slatestudio.com"]
  spec.description   = %q{CSS styling helpers for Simple Form}
  spec.summary       = %q{CSS styling helpers for Simple Form}
  spec.homepage      = "https://github.com/slate-studio/simple_form_scss"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end