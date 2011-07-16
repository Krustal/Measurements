# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "measurements/version"

Gem::Specification.new do |s|
  s.name        = "measurements"
  s.version     = Measurements::VERSION
  s.authors     = ["Byron Strasburger McMullen"]
  s.email       = ["byronsm@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A unit conversion library}
  s.description = %q{Measurements is a library for handling units, including conversions between various types.}

  s.rubyforge_project = "measurements"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency('rspec', '~> 2.6')
end
