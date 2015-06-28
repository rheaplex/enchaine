# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'enchaine/version'

Gem::Specification.new do |spec|
  spec.name          = "enchaine"
  spec.version       = Enchaine::VERSION
  spec.authors       = ["Rob Myers"]
  spec.email         = ["rob@robmyers.org"]
  spec.license       = "GNU GPL v3 (or later)"
  spec.summary       = "Change Markdown headers to cryptographic hashes."
  spec.description   = %q{Enchaine is a command-line tool to change Markdown headers (# or ===) to cryptographic hashes for aesthetic reasons. Various hashes, representations, and strategies for applying them can be specified.}
  spec.homepage      = "https://github.com/robmyers/enchaine"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "base58"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
