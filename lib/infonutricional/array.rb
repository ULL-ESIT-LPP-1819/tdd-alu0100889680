class Array
	
	include Comparable
	include Enumerable
	
	def sort_for

		@aux = self

		for x in 0..self.length-1
			for y in 0..length-2-x
				if ( @aux[y] > @aux[y+1] )
					@aux[y], @aux[y+1] = @aux[y+1], @aux[y] 
				end
			end
		end

		return @aux

	end

	def sort_each
		
		@aux = self
		@pos = 0

		@aux.each do |x|
			@pos = @pos + 1
			@aux.each do |y|
				if (x<y)
					x, y = y, x
				end
			end
		end
		return @aux
	end
end
			
		