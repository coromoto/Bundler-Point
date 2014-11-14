module Point
  class Point
    include Comparable
    attr_reader :x, :y
    def initialize(x,y)
      @x, @y = x, y
    end
    def *(value)
      Point.new(@x * value, @y * value)
    end
    def -@
      Point.new(-@x, -@y)
    end
    def +(other)
      Point.new(@x + other.x, @y + other.y)
    end
    #se incluye el operador del mixin comparable
    def <=>(other)
      return nil unless other.instance_of? Point
      @x**2 + @y**2 <=> other.x**2 + other.y**2
    end
    
    # Tipeado pato 
    def ==(other)
      if ((other.respond_to?x) && (other.respond_to?y)) then
        @x == other.x && @y == other.y
      end
      rescue
        false
    end
    # Mas restrictivo (sin herencia - usa instance_of?)
    def ==(other)
      if other.instance_of?Point
         @x == other.x && @y == other.y
      else
        false
      end
    end
    # Restrictivo (con herencia - usa is_a?)
    def ==(other)
      if other.is_a?Point
         @x == other.x && @y == other.y
      else
        false
      end
    end
  end
end