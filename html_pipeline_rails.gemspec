# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'html_pipeline_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "html_pipeline_rails"
  spec.version       = HtmlPipelineRails::VERSION
  spec.authors       = ["Aidan Feldman"]
  spec.email         = ["aidan.feldman@gmail.com"]
  spec.summary       = %q{Render Markdown via HTML::Pipeline in Rails.}
  spec.homepage      = "https://github.com/afeld/html_pipeline_rails/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "commonmarker"
  spec.add_dependency "html-pipeline"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "actionpack", ">= 3.0"
  spec.add_development_dependency "rspec", "~> 2.14"

  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end
