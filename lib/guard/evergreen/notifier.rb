# encoding: utf-8
#
require 'guard/notifier'

module Guard
  class Evergreen
    class Notifier
      def self.notify(result, message)
        ::Guard::Notifier.notify(message, :title => 'Evergreen test results', :image => (result ? :success : :failed))
      end
    end
  end
end
