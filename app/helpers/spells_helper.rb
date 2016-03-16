module SpellsHelper

	def spell_level(int)
		if int < 0
			'Class'
		elsif int == 0
			'Cantrip'
		else
			"Level #{int}"
		end
	end

	def spell_level_panel_class(int)
		if int < 0
			'panel-primary'
		elsif int == 0
			'panel-info'
		else
			'panel-default'
		end
	end

end
