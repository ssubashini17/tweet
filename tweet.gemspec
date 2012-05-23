# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tweet/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Subashini Soundararajan"]
  gem.email         = ["ssounda@ncsu.edu"]
  gem.description   = %q{Tweet Word Frequency } 
  gem.summary       = %q{Returns a list of words in increasing order of word frequency}
  gem.homepage      = ""
  gem.add_dependency 'twitter', ['>= 2.4.0']
  gem.add_development_dependency 'json'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'yard'
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tweet"
  gem.require_paths = ["lib"]
  gem.version       = Tweet::VERSION
end
