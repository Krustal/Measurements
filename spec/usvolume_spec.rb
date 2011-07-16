require 'measurements/us_volume'

describe Measurements::USVolume, "unit initializers" do
  it "should have 1 tsp for 1 tsp" do
    @test = Measurements::USVolume.new(1, :tsp)
    @test.in_tsp.should == 1
  end

  it "should have 3 tsp for 1 tbsp" do
    @test = Measurements::USVolume.new(1, :tbsp)
    @test.in_tsp.should == 3
  end

  it "should have 6 tsp for 1 fl oz" do
    @test = Measurements::USVolume.new(1, :fl_oz)
    @test.in_tsp.should == 6
  end

  it "should have 48 tsp for 1 cup" do
    @test = Measurements::USVolume.new(1, :cup)
    @test.in_tsp.should == 48
  end

  it "should have 96 tsp for 1 pint" do
    @test = Measurements::USVolume.new(1, :pint)
    @test.in_tsp.should == 96
  end

  it "should have 192 tsp for 1 quart" do
    @test = Measurements::USVolume.new(1, :quart)
    @test.in_tsp.should == 192
  end

  it "should have 768 tsp for 1 gallon" do
    @test = Measurements::USVolume.new(1, :gallon)
    @test.in_tsp.should == 768
  end
end

describe Measurements::USVolume, "basic conversions" do
  it "should convert 3 tsp to 1 tbsp" do
    @test = Measurements::USVolume.new(3, :tsp)
    @test.in_tbsp.should == 1
  end

  it "should convert 6 tsp to 1 fl oz" do
    @test = Measurements::USVolume.new(6, :tsp)
    @test.in_fl_oz.should == 1
  end

  it "should convert 48 tsp to 1 cup" do
    @test = Measurements::USVolume.new(48, :tsp)
    @test.in_cups.should == 1
  end

  it "should convert 96 tsp to 1 pint" do
    @test = Measurements::USVolume.new(96, :tsp)
    @test.in_pints.should == 1
  end

  it "should convert 192 tsp to 1 quart" do
    @test = Measurements::USVolume.new(192, :tsp)
    @test.in_quarts.should == 1
  end

  it "should convert 768 tsp to 1 gallon" do
    @test = Measurements::USVolume.new(768, :tsp)
    @test.in_gallons.should == 1
  end
end

