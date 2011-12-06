# encoding: utf-8
#
require 'guard'
require 'guard/guard'

module Guard
  class Evergreen < Guard

    autoload :Runner,   'guard/evergreen/runner'
    autoload :Notifier, 'guard/evergreen/notifier'

    def initialize(watchers = [], options = {})
      super

      @runner ||= Runner.new(options)
    end

    def start
      true
    end

    def stop
      true
    end

    def reload
      true
    end

    def paths
      []
    end

    def run_all 
      return @runner.run(paths) unless paths.empty?
      true
    end

    def run_on_change(paths = [])
      return @runner.run(paths) unless paths.empty?
      true
    end

  end
end
