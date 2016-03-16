class AddFieldsToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :hp, :integer, default: 0
    add_column :players, :hp_max, :integer, default: 0
    add_column :players, :armor, :integer, default: 0
    add_column :players, :initiative, :integer, default: 0
    add_column :players, :speed, :integer, default: 1
    add_column :players, :strength, :integer, default: 0
    add_column :players, :dexterity, :integer, default: 0
    add_column :players, :constitution, :integer, default: 0
    add_column :players, :intelligence, :integer, default: 0
    add_column :players, :wisdom, :integer, default: 0
    add_column :players, :charisma, :integer, default: 0
    add_column :players, :personality, :text, default: '...'
    add_column :players, :ideals, :text, default: '...'
    add_column :players, :bonds, :text, default: '...'
    add_column :players, :flaws, :text, default: '...'
  end
end
