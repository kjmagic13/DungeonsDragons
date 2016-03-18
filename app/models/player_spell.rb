class PlayerSpell < ActiveRecord::Base

	belongs_to :player
	belongs_to :spell

	default_scope { joins(:spell).order(:level, 'spells.name') }

	def use
		unless self.is_cantrip?
			self.available = false
			self.save
		end
	end

	def is_cantrip?
		self.level == 0
	end

end
