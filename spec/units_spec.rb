require 'measurements/units'
require 'measurements/us_volume'

describe Measurements::Units, "basic castors" do
  it "should convert to tsp" do
    @test = 1.tsp
    @test.should == Measurements::USVolume.new(1, :tsp)
  end

  it "should convert to tbsp" do
    @test = 1.tbsp
    @test.should == Measurements::USVolume.new(1, :tbsp)
  end

  it "should convert to fl oz" do
    @test = 1.fl_oz
    @test.should == Measurements::USVolume.new(1, :fl_oz)
  end

  it "should convert to cups" do
    @test = 1.cups
    @test.should == Measurements::USVolume.new(1, :cup)
  end

  it "should convert to pints" do
    @test = 1.pints
    @test.should == Measurements::USVolume.new(1, :pint)
  end

  it "should convert to quarts" do
    @test = 1.quarts
    @test.should == Measurements::USVolume.new(1, :quart)
  end

  it "should convert to gallons" do
    @test = 1.gallons
    @test.should == Measurements::USVolume.new(1, :gallon)
  end
end
