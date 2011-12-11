require 'spec_helper'

module Guard
  class Evergreen
    describe Runner do
      subject { Runner.new } 

      it 'runs the specs correctly' do 
        subject.should_receive(:system).with('evergreen run')
        subject.run(['.git/objects/1'])
      end
    end
  end
end
