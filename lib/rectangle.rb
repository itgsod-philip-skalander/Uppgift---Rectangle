# Den här funktionen skapar två objekt varav ett av objekten ärver från första objektet Rectangle.
# Rectangle har egenskaperna width och height. Om width och height är mindre än 0 så funkar inte programmet.
# Square ärver Rectangles egenskaper width och height. Men eftersom square alltid har lika långa sidor,
# så gör vi om width och height till sides.
# Area funktionerna tar width*height, för att få arean.
# Circumference tar 2*width + 2*height, för att få omkretsen.

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


