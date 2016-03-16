class Spell < ActiveRecord::Base

	validates :name, uniqueness: true

	default_scope { order :name }

	has_many :player_spells, dependent: :destroy

	def roll20_link
		URI.encode "https://roll20.net/compendium/dnd5e/Spells:#{name}"
	end

end
