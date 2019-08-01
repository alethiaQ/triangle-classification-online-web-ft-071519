class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    return :equilateral unless (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
    return :isosceles unless @side_1 != @side_2 || @side_2 != @side_3 || @side_1 != @side_3
    return :scalene unless @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3

    if (@side_1 + @side_2) < @side_3 || (@side_2 + @side_3) < @side_1 || (@side_1 + @side_3) < @side_2 || (@side_1 <= 0) || @side_2 <= 0 || @side_3 <= 0
      begin
        raise TriangleError
      rescue TriangleError => error

      end
    end
  end
  class TriangleError < StandardError
  end

end
