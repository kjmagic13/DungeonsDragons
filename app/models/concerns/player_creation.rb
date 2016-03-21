module PlayerCreation
	extend ActiveSupport::Concern

	attr_accessor :use_standard_abilities

	included do
		before_create :set_abilities
	end

	module ClassMethods

		# def create_random
		# 	player = self.new
		# 	player.set_abilities standard_abilities
		# 	# race & speed, pg 17 of handbook
		# 	# RACES
		# 	puts player.to_json
		# end

	end

	def set_abilities
		unless self.use_standard_abilities.to_i == 0
			standard_assignments = [15,14,13,12,10,8]
			ABILITIES.each_with_index do |ability, index|
				self.send "#{ability.underscore}=", standard_assignments[index]
			end
		else # roll
			ABILITIES.each do |ability|
				self.send "#{ability.underscore}=", Dice.best_x_of_yDz(3,4,6)
			end
		end
	end

end
