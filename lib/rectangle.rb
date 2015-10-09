class Rectangle
  def initialize(width:, height:)
    raise ArgumentError, "arguments must be positive" if width <= 0 or height <= 0
    @width = width
    @height = height
  end

  def area()
    return @width*@height
  end

  def circumference()
    return 2*@width+2*@height
  end
end

class Square < Rectangle
  def initialize(side:)
    raise ArgumentError, "arguments must be positive" if side <= 0
    @width = side
    @height = side
  end
end
