class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    type = :scalene
    if (@side1 == 0 || @side2 == 0 || @side3 == 0 || @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1)
      raise TriangleError
    elsif (@side1 == @side2 && @side1 == @side3)
      type = :equilateral
    elsif (@side1 == @side2 || @side1 == @side3 || @side2 == @side3)
      type = :isosceles
    end
    type
  end 

  class TriangleError < StandardError
  end
end
