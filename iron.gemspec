# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "iron/version"

Gem::Specification.new do |s|
  s.name        = "iron-sass"
  s.version     = Iron::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Devin Halladay"]
  s.email       = ["hello@royale.io"]
  s.license     = 'MIT'
  s.homepage    = "https://github.com/guild/iron"
  s.summary     = "Iron Sass mixins: The basis of strong, functional, and beautiful tools."
  s.description = <<-DESC
Iron is a minimalist Sass framework. It contains only the basics—no fluff, no nonsense.
  DESC

  s.rubyforge_project = "iron-sass"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('sass', '>= 3.3.0.rc.1')
  s.add_dependency('thor')

  s.add_development_dependency('aruba', '~> 0.4')
  s.add_development_dependency('rake')
end