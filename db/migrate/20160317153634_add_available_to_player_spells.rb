class AddAvailableToPlayerSpells < ActiveRecord::Migration
  def change
    add_column :player_spells, :available, :boolean, default: true
  end
end
