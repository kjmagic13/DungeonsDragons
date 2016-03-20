class Player < ActiveRecord::Base

	include PlayerCreation

	has_many :player_spells, dependent: :destroy
	has_many :spells, through: :player_spells

	has_many :weapons, dependent: :destroy
	has_many :items, dependent: :destroy

	# accepts_nested_attributes_for :player_spells, allow_destroy: true, reject_if: proc { |s| s['spell_id'].blank? }
	validates :rank, :xp, :hp, :hp_max, :armor, :initiative, :speed, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :inspiration, :proficiency_bonus, :mod_Strength, :mod_Dexterity, :mod_Constitution, :mod_Intelligence, :mod_Wisdom, :mod_Charisma, numericality: { only_integer: true }

	default_scope { includes(:spells, :weapons, :items) }

	def rest
		self.hp = self.hp_max
		self.player_spells.each{ |s| s.available = true }
		self.save
	end

	def test
		'#'
	end

	ABILITIES.each do |ability|
		# def moded_Strength
		define_method("moded_#{ability}") do
			if is_proficient_in_ability?(ability)
				self.send("mod_#{ability}") + self.proficiency_bonus
			else
				self.send("mod_#{ability}")
			end
		end
	end

	SKILLS.each do |skill|
		# def moded_Acrobatics
		define_method(skill.name) do
			if is_proficient_in_skill?(skill.name)
				self.send("mod_#{skill.modifier}") + self.proficiency_bonus
			else
				self.send("mod_#{skill.modifier}")
			end

		end
	end

	def is_proficient_in_ability?(ability)
		self.send("mod_#{ability}_prof")
	end

	def is_proficient_in_skill?(skill_name)
		self.send("skill_#{skill_name.parameterize.underscore}_prof")
	end

	private

end
