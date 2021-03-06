# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thesaurus/version'

Gem::Specification.new do |spec|
  spec.name          = "thesaurus"
  spec.version       = Thesaurus::VERSION
  spec.authors       = ["Pete Bevin"]
  spec.email         = ["pete@petebevin.com"]

  spec.summary       = %q{Look up English words in an English thesaurus. Thesaurus included.}
  spec.description   = %q{Full-text thesaurus search, based on Grady Ward's Moby Project https://en.wikipedia.org/wiki/Moby_Project}
  spec.homepage      = "http://github.com/pbevin/thesaurus"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/thesaurus/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rspec"
end
