class AddDefaultsToProficiencies < ActiveRecord::Migration
  def change
	  change_column :players, :mod_Strength_prof, :boolean, default: false
	  change_column :players, :mod_Dexterity_prof, :boolean, default: false
	  change_column :players, :mod_Constitution_prof, :boolean, default: false
	  change_column :players, :mod_Intelligence_prof, :boolean, default: false
	  change_column :players, :mod_Wisdom_prof, :boolean, default: false
	  change_column :players, :mod_Charisma_prof, :boolean, default: false
	  change_column :players, :skill_acrobatics_prof, :boolean, default: false
	  change_column :players, :skill_animal_handling_prof, :boolean, default: false
	  change_column :players, :skill_arcana_prof, :boolean, default: false
	  change_column :players, :skill_athletics_prof, :boolean, default: false
	  change_column :players, :skill_deception_prof, :boolean, default: false
	  change_column :players, :skill_history_prof, :boolean, default: false
	  change_column :players, :skill_insight_prof, :boolean, default: false
	  change_column :players, :skill_intimidation_prof, :boolean, default: false
	  change_column :players, :skill_investigation_prof, :boolean, default: false
	  change_column :players, :skill_medicine_prof, :boolean, default: false
	  change_column :players, :skill_nature_prof, :boolean, default: false
	  change_column :players, :skill_perception_prof, :boolean, default: false
	  change_column :players, :skill_performance_prof, :boolean, default: false
	  change_column :players, :skill_persuasion_prof, :boolean, default: false
	  change_column :players, :skill_religion_prof, :boolean, default: false
	  change_column :players, :skill_sleight_of_hand_prof, :boolean, default: false
	  change_column :players, :skill_stealth_prof, :boolean, default: false
	  change_column :players, :skill_survival_prof, :boolean, default: false
  end
end
