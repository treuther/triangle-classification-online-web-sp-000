class Triangle
  # write code here
  attr_accessor :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x == @y && @y == @z && @z == @x
      :equilateral
    elsif @x != @y && @y != @z && @z !=@x
      :scalene
    else
      :isosceles
    end
    if @x == 0 || @y == 0 || @z == 0
      raise TriangleError
    end
end

  class TriangleError < StandardError

  end

end
