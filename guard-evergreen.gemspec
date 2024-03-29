# encoding: UTF-8

$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "guard-evergreen"
  s.version     = "0.0.3"
  s.authors     = ["Christopher Meiklejohn"]
  s.email       = ["cmeiklejohn@criticalpair.com"]
  s.homepage    = "https://github.com/criticalpair/guard-evergreen"
  s.summary     = %q{Continuous testing for evergreen.}
  s.description = %q{Guard watches files.  Evergreen runs tests.}

  s.rubyforge_project = "guard-evergreen"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'guard'
  s.add_dependency 'rake'
  s.add_dependency 'evergreen'

  s.add_development_dependency('yard')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('redcarpet')

  s.add_development_dependency('rspec')
  s.add_development_dependency('rake','~> 0.9.2')

  s.add_development_dependency('tddium')
end
