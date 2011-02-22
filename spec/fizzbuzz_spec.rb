require File.expand_path( File.dirname(__FILE__) + '/../lib/fizzbuzz')

describe FizzBuzz do

  describe "#fizzbuzz a number" do

    it "should return fizz when the number is evenly divisible by 3" do
      [3, 6, 9, 12, 33].each do |n|
        subject.fizzbuzz(n).should == 'fizz'
      end
    end

    it "should return buzz when the number is evenly divisible by 5" do
      [5, 10, 20, 25, 35].each do |n|
        subject.fizzbuzz(n).should == 'buzz'
      end
    end

    it "should return fizzbuzz when the number is evenly divisible by 3 and 5" do
      [15, 30, 45, 60].each do |n|
        subject.fizzbuzz(n).should == 'fizzbuzz'
      end
    end

    it "return the number itself when it is not evenly divisible by 3 and/or 5" do
      [2, 4, 8, 14, 11, 7].each do |n|
        subject.fizzbuzz(n).should == n.to_s
      end
    end

  end

end

