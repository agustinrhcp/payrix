lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "payrixllc/version"

Gem::Specification.new do |spec|
  spec.name          = "payrixllc"
  spec.version       = Payrixllc::VERSION
  spec.summary       = %q{Ruby bindings for the Payrixllc API}
  spec.description   = %q{Defines ruby classes for the Payrixllc API}
  spec.homepage      = "https://portal.payrix.com/docs/api"
  spec.author        = "Payrixllc"
  spec.files         = Dir['lib/**/*.rb']
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "faraday", "~> 0.14.0"
  spec.add_runtime_dependency "faraday_middleware", "~> 0.12.2"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
