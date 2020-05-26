require 'nmax'

RSpec.describe "Nmax::FilterNumbers" do


  describe ".filter" do

  	context "when one part of digits is before \n and another part is after" do
	
	      it "should return one number" do					
					$stdin = StringIO.new("Koroche tak kf554\n66sdf")
	      	array = Nmax::FilterNumbers.filter($stdin, 5)
	      	expect(array.first).to be(55466)
	      end

	  end

  	context "when digits are at the end of input" do
	
	      it "should return one number" do					
					$stdin = StringIO.new("Koroche tak 56")
	      	array = Nmax::FilterNumbers.filter($stdin, 5)
	      	expect(array.first).to be(56)
	      end

	  end

  	context "when there are 5 numbers" do
	
	      it "should return the 3 biggest" do					
					$stdin = StringIO.new("Koro88ch22e t1ak 56k5dji77")
	      	array = Nmax::FilterNumbers.filter($stdin, 3)
	      	expect(array).to eq([56, 77, 88])
	      end

	  end

  	context "when there are duplicate numbers" do
	
	      it "should return the 3 unique biggest numbers" do					
					$stdin = StringIO.new("Koro88ch22e t22l1a2\n2k 10k5dji11ea11")
	      	array = Nmax::FilterNumbers.filter($stdin, 3)
	      	expect(array).to eq([11, 22, 88])
	      end

	  end

  end

end
