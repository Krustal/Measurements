require 'measurements/us_volume'

module Measurements # :nodoc:

  # This module is used to extend the Fixnum and Float
  # Kernel classes to support more human readible usage
  # of unit measurements. (e.g. 1.gallons)
  #
  # Current Support:
  # teaspoons, tablespoons, fluid oz, cups, pints, quarts,
  # gallons 
  #
  # Author:: grynwide (mailto: grynwide@gmail.com)
  #
  # :title:Units
  module Units

    # Returns USVolume object with a size equal
    # to the number in tablespoons.
    def tsp
      Measurements::USVolume.new(self, :tsp)
    end

    # Returns USVolume object with a size equal
    # to the number in tablespoons.
    def tbsp
      Measurements::USVolume.new(self, :tbsp)
    end

    # Returns USVolume object with size equal
    # to the number in fluid ounces.
    def fl_oz
      Measurements::USVolume.new(self, :fl_oz)
    end
    
    # Returns USVolume object with size equal
    # to the number in cups.
    def cups
      Measurements::USVolume.new(self, :cup) 
    end
    
    # Returns USVolume object with size equal
    # to the number in pints.
    def pints
      Measurements::USVolume.new(self, :pint)
    end

    # Returns USVolume object with size equal
    # to the number in quarts.
    def quarts
      Measurements::USVolume.new(self, :quart)
    end

    # Returns USVolume object with size equal
    # to the number in gallons.
    def gallons
      Measurements::USVolume.new(self, :gallon)
    end
  end
end

# extends Fixnum class with Measurements::Units
class Fixnum
  include Measurements::Units
end

# extends Float class with Measurements::Units
class Float
  include Measurements::Units
end
