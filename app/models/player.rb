class Player < ActiveRecord::Base

	has_many :player_spells, dependent: :destroy
	has_many :spells, through: :player_spells

	has_many :weapons, dependent: :destroy

	accepts_nested_attributes_for :player_spells, allow_destroy: true, reject_if: proc { |s| s['spell_id'].blank? }

	default_scope { includes(:spells, :weapons) }

	def rest
		self.hp = self.hp_max
		self.player_spells.each{ |s| s.available = true }
		self.save
	end

	MODIFIERS.each do |modifier|
		# def moded_Strenght do; end;
		define_method("moded_#{modifier}") do
			if is_proficient_in_mod?(modifier)
				self.send("mod_#{modifier}") + self.proficiency_bonus
			else
				self.send("mod_#{modifier}")
			end
		end
	end

	SKILLS.each do |skill|
		skill_name = skill['name']
		modifier = skill['modifier']
		# def moded_Acrobatics do; end;
		define_method(skill_name) do
			if is_proficient_in_skill?(skill_name)
				self.send("mod_#{modifier}") + self.proficiency_bonus
			else
				self.send("mod_#{modifier}")
			end

		end
	end

	def is_proficient_in_mod?(modifier)
		self.send("mod_#{modifier}_prof")
	end

	def is_proficient_in_skill?(skill_name)
		self.send("skill_#{skill_name.parameterize.underscore}_prof")
	end

	private

end
