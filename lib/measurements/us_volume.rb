# The USVolume class handles storing and converting the various
# forms of US volume units (cups, tsp, tbsp, gallong, etc.). 
# This implementation stores all values in teaspoons, converting
# larger units to the corresponding size in teaspoons.
module Measurements
  class USVolume
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

    def in_tsp
      @size
    end

    def in_tbsp
      @size / 3
    end

    def in_fl_oz
      @size / 6
    end

    def in_cups
      @size / 48
    end

    def in_pints
      @size / 96
    end

    def in_quarts
      @size / 192
    end

    def in_gallons
      @size / 768
    end

    def ==(other)
      @size == other.in_tsp
    end
  end
end

