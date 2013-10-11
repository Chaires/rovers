# Test Compass 
require_relative "../app/compass" 

describe Compass do 

it "should initilize with location" do 
		@compass = Compass.new(1,2,"N")
		@compass.x.should == 1 
		@compass.y.should == 2
		@compass.orientation.should == "N"
	end	

	it "should turn left from N" do
		@compass = Compass.new(1,2,"N")
		@compass.turn_left
		@compass.orientation.should == "W"
	end

	it "should turn left from W " do
		@compass = Compass.new(1,2,"W")
		@compass.turn_left
		@compass.orientation.should == "S"
	end

	it "should turn left from S" do
		@compass = Compass.new(1,2,"S")
		@compass.turn_left
		@compass.orientation.should == "E"
	end

	it "should turn left from E " do
		@compass = Compass.new(1,2,"E")
		@compass.turn_left
		@compass.orientation.should == "N"
	end


it "should initialize with location" do
		@compass = Compass.new(1,2,"N")
		@compass.x.should == 1
		@compass.y.should == 2
		@compass.orientation == "N"
	end
 
	it "should turn right from N" do
		@compass=Compass.new(1,2,"N")
		@compass.turn_right
		@compass.orientation.should == "E"
	end
 
	it "should turn right from W" do
		@compass=Compass.new(1,2,"W")
		@compass.turn_right
		@compass.orientation.should == "N"
	end
 
	it "should turn right from S"do
		@compass=Compass.new(1,2,"S")
		@compass.turn_right
		@compass.orientation.should == "W"
	end
 
	it "should turn right from E"do
		@compass=Compass.new(1,2,"E")
		@compass.turn_right
		@compass.orientation.should == "S"
	end
 

	it "should move N" do
		@compass =Compass.new(1,2,"N")		
		@compass.move_to_N
		@compass.x.should == 2
	end
	it "should move E" do
		@compass =Compass.new(1,2,"E")		
		@compass.move_to_E
		@compass.y.should == 3
	end
	it "should move S" do
		@compass =Compass.new(1,2,"S")		
		@compass.move_to_S
		@compass.x.should == 0
	end
	it "should move W" do
		@compass =Compass.new(1,2,"W")		
		@compass.move_to_W
		@compass.y.should == 1
	end

end
