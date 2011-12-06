# encoding: utf-8
#
module Guard
  class Evergreen
    class Runner

      class << self
        def run(paths = [], options = {}) 
          Runner.new(options).run(paths, options)
        end
      end

      def initialize(options = {}) 
        @options = { 
          :verbose => true
        }.merge(options)
      end

      def run(paths, options = {})
        message = options[:message] || "Running: evergreen run"
        UI.info message, :reset => true
        system(command(paths))
      end

      def verbose?
        @options[:verbose]
      end

      private

      def command(paths = [])
        "evergreen run"
      end

    end
  end
end
