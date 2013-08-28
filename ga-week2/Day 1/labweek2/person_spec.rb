require 'rspec'
require './person.rb'

describe Person do 
  subject do
    Person.new("Joe", "30", "male", "2")
  end
    describe ".to_s" do
    it 'should return with "Joe is a 30 year old male with 2 kids and 0 pets."' do
      subject.to_s.should == "Joe is a 30 year old male with 2 kids and 0 pets."
    end
  end
end