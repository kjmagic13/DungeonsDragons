class CreatePlayerSpells < ActiveRecord::Migration
  def change
    create_table :player_spells do |t|
      t.belongs_to :player, index: true, foreign_key: true
      t.belongs_to :spell, index: true, foreign_key: true
      t.integer :level

      t.timestamps null: false
    end
  end
end
