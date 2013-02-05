# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bini-test-subcommand/version'

Gem::Specification.new do |gem|
  gem.name          = "bini-test-subcommand"
  gem.version       = Bini::Test::Subcommand::VERSION
  gem.authors       = ["Ernie Brodeur"]
  gem.email         = ["ebrodeur@ujami.net"]
  gem.description   = "A gem to facilitate testing bini."
  gem.summary       = "Specifically, it is a functional 'subcommand' in the prefix/subcommand architecture."
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
