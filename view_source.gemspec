# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "view_source/version"

Gem::Specification.new do |s|
  s.name        = "view_source"
  s.version     = ViewSource::VERSION
  s.authors     = ["Mike Clark"]
  s.email       = ["mike@clarkware.com"]
  s.homepage    = ""
  s.summary     = %q{View the source of any Ruby 1.9 method in TextMate}
  s.description = %q{View the source of any Ruby 1.9 method in TextMate}

  s.rubyforge_project = "view_source"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'irb_plugin'
end
