# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ea/validation/version"

Gem::Specification.new do |spec|
  spec.name          = "ea-validation"
  spec.version       = Ea::Validation::VERSION
  spec.authors       = ["Environment Agency"]
  spec.email         = ["alan.cruikshanks@environment-agency.gov.uk"]
  spec.license       = "The Open Government Licence (OGL) Version 3"
  spec.summary       = "Package of validations commonly used in EA projects"
  spec.description   = "Package containing validations: ."
  spec.homepage      = "https://github.com/EnvironmentAgency/ea-validation"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "os_map_ref"
  spec.add_dependency "activemodel"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.42"
  spec.add_development_dependency "virtus"
end
