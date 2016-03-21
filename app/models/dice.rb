class Dice

	def self.best_x_of_yDz(x=1, y=1, z=20)
		throws = []
		y.times do
			throws << rand(1..z)
		end
		throws.sort.last(x).sum
	end

end
