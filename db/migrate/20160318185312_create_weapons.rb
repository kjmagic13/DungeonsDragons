class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :attack
      t.string :damage
      t.belongs_to :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
