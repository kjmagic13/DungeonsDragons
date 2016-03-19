class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :player, index: true, foreign_key: true
      t.integer :quantity
      t.string :name
      t.text :notes

      t.timestamps null: false
    end
  end
end
