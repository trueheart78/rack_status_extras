# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack_status_extras/version'

Gem::Specification.new do |spec|
  spec.name          = "rack_status_extras"
  spec.version       = RackStatusExtras::VERSION
  spec.authors       = ["Josh Mills"]
  spec.email         = ["josh@trueheart78.com"]

  spec.summary       = %q{Extends Rack::Utils::SYMBOL_TO_STATUS_CODE}
  spec.description   = %q{Rack::Utils::SYMBOL_TO_STATUS_CODE will now have message + code mashup. Example: :created_201, :not_found_404}
  spec.homepage      = "https://github.com/trueheart78/rack_status_extras"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
