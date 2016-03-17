class AddSkillProfsToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :skill_acrobatics_prof, :boolean
    add_column :players, :skill_animal_handling_prof, :boolean
    add_column :players, :skill_arcana_prof, :boolean
    add_column :players, :skill_athletics_prof, :boolean
    add_column :players, :skill_deception_prof, :boolean
    add_column :players, :skill_history_prof, :boolean
    add_column :players, :skill_insight_prof, :boolean
    add_column :players, :skill_intimidation_prof, :boolean
    add_column :players, :skill_investigation_prof, :boolean
    add_column :players, :skill_medicine_prof, :boolean
    add_column :players, :skill_nature_prof, :boolean
    add_column :players, :skill_perception_prof, :boolean
    add_column :players, :skill_performance_prof, :boolean
    add_column :players, :skill_persuasion_prof, :boolean
    add_column :players, :skill_religion_prof, :boolean
    add_column :players, :skill_sleight_of_hand_prof, :boolean
    add_column :players, :skill_stealth_prof, :boolean
    add_column :players, :skill_survival_prof, :boolean
  end
end
