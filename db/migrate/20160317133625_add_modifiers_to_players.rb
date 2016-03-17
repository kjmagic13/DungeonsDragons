class AddModifiersToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :mod_Strength, :integer, default: 0
    add_column :players, :mod_Dexterity, :integer, default: 0
    add_column :players, :mod_Constitution, :integer, default: 0
    add_column :players, :mod_Intelligence, :integer, default: 0
    add_column :players, :mod_Wisdom, :integer, default: 0
    add_column :players, :mod_Charisma, :integer, default: 0
    add_column :players, :mod_Strength_prof, :boolean
    add_column :players, :mod_Dexterity_prof, :boolean
    add_column :players, :mod_Constitution_prof, :boolean
    add_column :players, :mod_Intelligence_prof, :boolean
    add_column :players, :mod_Wisdom_prof, :boolean
    add_column :players, :mod_Charisma_prof, :boolean
  end
end
