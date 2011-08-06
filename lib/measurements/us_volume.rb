module Measurements # :nodoc:
  
  # The USVolume class handles storing and converting the various
  # forms of US volume units (cups, tsp, tbsp, gallong, etc.). 
  # This implementation stores all values in teaspoons, converting
  # larger units to the corresponding size in teaspoons.
  class USVolume

    # Takes a numerical size and unit type symbol and generates
    # volume object. All volumes are stored as teaspoons, the
    # symbols provide a familiar interface for defining size.
    def initialize(size, unit)
      case unit
      when :tsp
        @size = size
      when :tbsp
        @size = size * 3
      when :fl_oz
        @size = size * 6
      when :cup
        @size = size * 48
      when :pint
        @size = size * 96
      when :quart
        @size = size * 192
      when :gallon
        @size = size * 768
      else
        raise ArgumentError, 'Invalid unit type specified'
      end
    end

    # Returns size in teaspoons.
    def in_tsp
      @size
    end

    # Returns size in tablespoons.
    def in_tbsp
      @size / 3
    end
    
    # Returns size in fluid ounces.
    def in_fl_oz
      @size / 6
    end
    
    # Returns size in cups.
    def in_cups
      @size / 48
    end

    # Returns size in pints.
    def in_pints
      @size / 96
    end

    # Returns size in quarts.
    def in_quarts
      @size / 192
    end

    # Returns size in gallons.
    def in_gallons
      @size / 768
    end

    # Reset the volume
    def ==(other)
      @size == other.in_tsp
    end
  end
end

