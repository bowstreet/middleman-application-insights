# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "middleman-application-insights/version"

Gem::Specification.new do |s|
  s.name        = "middleman-application-insights"
  s.version     = Middleman::ApplicationInsights::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matthias Wenz"]
  s.homepage    = "https://bowstreet.de"
  s.summary     = "A Middleman plugin for Application Insights tracking."
  s.description = "..."
  s.license     = "MIT"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.required_ruby_version = '>= 1.9.3'
  s.add_dependency("middleman-core", ["~> 3.2"])
end
