# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'excavator/version'

Gem::Specification.new do |spec|
  spec.name          = "excavator"
  spec.version       = Excavator::VERSION
  spec.authors       = ["Aaron"]
  spec.email         = ["aaronrubesh6@gmail.com"]

  spec.summary       = %q{Web scraping gem to to parse different objects from HTML}
  spec.homepage      = "https://github.com/Inseighn/excavator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
	spec.add_development_dependency "nokogiri", "~> 1.7"
end
