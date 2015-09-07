# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alerty/plugin/datadog_event/version'

Gem::Specification.new do |spec|
  spec.name          = "alerty-plugin-datadog_event"
  spec.version       = Alerty::Plugin::DatadogEvent::VERSION
  spec.authors       = ["Yohei Kawahara(inokappa)"]
  spec.email         = ["inokara@gmail.com"]

  spec.summary       = %q{alerty plugin for Datadog Event}
  spec.description   = %q{alerty plugin for Datadog Event}
  spec.homepage      = "https://github.com/inokappa/alerty-plugin-datadog_event"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
