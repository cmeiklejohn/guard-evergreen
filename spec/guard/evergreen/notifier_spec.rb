require 'spec_helper'

module Guard
  class Evergreen 
    describe Notifier do 
      subject { Notifier }

      it 'notifies' do 
        Notifier.should_receive(:notify)
        subject.notify(true, 'success')
      end
    end
  end
end
