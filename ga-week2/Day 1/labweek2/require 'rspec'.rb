require 'rspec'
require './animal.rb'

describe Animal do 
  subject do
    Animal.new("Tony", "10", "male", "tiger")
  end

  describe ".to_s" do
    it 'should return with "Tony is a 10 year old male tiger."' do
      subject.to_s.should == "Tony is a 10 year old male tiger."
    end
  end
end