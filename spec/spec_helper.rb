# encoding: UTF-8

PROJECT_ROOT = File.expand_path("../..", __FILE__)
$LOAD_PATH << File.join(PROJECT_ROOT, "lib")

Bundler.require

Dir[File.join(PROJECT_ROOT,"spec/support/**/*.rb")].each {|f| require f}

require 'guard/evergreen'
