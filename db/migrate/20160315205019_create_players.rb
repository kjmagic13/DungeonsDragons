class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :rank
      t.string :class_name
      t.string :race
      t.string :alignment
      t.integer :xp

      t.timestamps null: false
    end
  end
end
