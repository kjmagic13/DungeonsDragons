module PlayerCreation
	extend ActiveSupport::Concern

	module ClassMethods

		def create_random
			player = self.new

			# abilities
			if true # standard
				standard_assignments = [15,14,13,12,10,8]
				ABILITIES.each_with_index do |ability, index|
					player.send "#{ability.underscore}=", standard_assignments[index]
				end
			else # roll
				ABILITIES.each do |ability|
					player.send "#{ability.underscore}=", best_x_of_yDz(3,4,6)
				end
			end

			# race & speed, pg 17 of handbook
			# RACES

			puts player.to_json
		end

		private

		def best_x_of_yDz(x=1, y=1, z=20)
			throws = []
			y.times do
				throws << rand(1..z)
			end
			throws.sort.last(x).sum
		end

	end

	private

end
