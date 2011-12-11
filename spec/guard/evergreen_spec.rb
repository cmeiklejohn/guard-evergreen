require 'spec_helper'

module Guard
  describe Evergreen do 
    subject { Evergreen.new } 

    it 'runs evergreen on valid file change' do 
      subject.runner.should_receive(:run)
      subject.run_on_change(['.git/objects/1'])
    end

    it 'does not run evergreen on invalid file change' do 
      subject.runner.should_not_receive(:run)
      subject.run_on_change([])
    end

    it 'does not run evergreen on start' do
      subject.runner.should_not_receive(:run)
      subject.start
    end
  end
end
