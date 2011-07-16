require 'measurements/us_volume'

module Measurements
  module Units
    def tsp
      Measurements::USVolume.new(self, :tsp)
    end

    def tbsp
      Measurements::USVolume.new(self, :tbsp)
    end

    def fl_oz
      Measurements::USVolume.new(self, :fl_oz)
    end
    
    def cups
      Measurements::USVolume.new(self, :cup) 
    end

    def pints
      Measurements::USVolume.new(self, :pint)
    end

    def quarts
      Measurements::USVolume.new(self, :quart)
    end

    def gallons
      Measurements::USVolume.new(self, :gallon)
    end
  end
end

class Fixnum
  include Measurements::Units
end

class Float
  include Measurements::Units
end
