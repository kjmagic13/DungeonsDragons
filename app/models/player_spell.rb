class PlayerSpell < ActiveRecord::Base

	belongs_to :player
	belongs_to :spell

	default_scope { joins(:spell).order(:level, 'spells.name') }

end
