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
    def <=>(other)
      return nil unless other.instance_of? Point
      @x**2 + @y**2 <=> other.x**2 + other.y**2
    end
  end
end
