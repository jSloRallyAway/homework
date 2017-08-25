class Triangle

	def initialize(a, b, c)
		@side_one = a
		@side_two = b
		@side_three = c
	end

	def kind
		if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
			raise TriangleError 
		end

		if @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
			raise TriangleError
		end

		if @side_one == @side_two && @side_one == @side_three
			return :equilateral
		end
		if @side_one != @side_two && @side_one != @side_three && @side_two != @side_three
			return :scalene
		end
		if @side_one == @side_two && @side_one != @side_three || @side_two == @side_three && @side_two != @side_one || @side_one == @side_three && @side_one != @side_two
			return :isosceles
		end

	end

end

class TriangleError < Exception
end


# Triangle.new(2,2,2)
# Triangle.new(2,2,3)
# Triangle.new(3,2,3)
# Triangle.new(0,0,0)
# Triangle.new(3,4,-5)
# Triangle.new(2,4,2).kind
# Triangle.new(1,1,3)
# Triangle.new(7,3,2)
