module PlayerSpellsHelper

	def spell_level(level)
		if level.to_i < 0
			'Class'
		elsif level.to_i == 0
			'Cantrip'
		else
			"Level #{level}"
		end
	end

	def spell_level_panel_class(level)
		if level.to_i < 0
			'panel-primary'
		elsif level.to_i == 0
			'panel-info'
		else
			'panel-default'
		end
	end

end
