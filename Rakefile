# encoding: UTF-8

require 'rubygems'
require 'bundler'
require 'bundler/gem_tasks'
require 'rake'
require 'rdoc/task'
require 'rake/clean'
require 'rubygems/package_task'
require 'rspec/core/rake_task'
require 'rdoc'
require 'yard'

include Rake::DSL

Bundler::GemHelper.install_tasks

RSpec::Core::RakeTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb']
  t.options = ['--no-private']
end

task :default => [:spec]
