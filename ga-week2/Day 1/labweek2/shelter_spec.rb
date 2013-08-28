require 'rspec'
require './shelter.rb'

describe Shelter do 
  subject do
    Shelter.new("Humane Society", "1000 Broadway St.")
  end
    describe ".to_s" do
    it 'should return with "Humane Society shelter at 1000 Broadway St. has 0 animals and 0 people."' do
      subject.to_s.should == "Humane Society shelter at 1000 Broadway St. has 0 animals and 0 people."
    end
  end
end