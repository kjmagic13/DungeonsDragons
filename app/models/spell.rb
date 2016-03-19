class Spell < ActiveRecord::Base

	validates :name, uniqueness: true

	default_scope { order :name }

	has_many :player_spells, dependent: :destroy

	def link_roll20
		URI.encode "https://roll20.net/compendium/dnd5e/Spells:#{name}"
	end

	# def link_dnd_spells
	# 	URI.encode "https://www.dnd-spells.com/spell/#{name.parameterize}"+'#page-wrapper'
	# end

	def casting_time_label_class
		if self.casting_time.include? 'bonus'
			'label-info'
		else
			'label-default'
		end
	end

end
