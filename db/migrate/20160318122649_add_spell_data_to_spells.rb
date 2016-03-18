class AddSpellDataToSpells < ActiveRecord::Migration
  def change
    add_column :spells, :desc, :text
    add_column :spells, :page, :string
    add_column :spells, :range, :string
    add_column :spells, :components, :string
    add_column :spells, :material, :string
    add_column :spells, :ritual, :string
    add_column :spells, :duration, :string
    add_column :spells, :concentration, :string
    add_column :spells, :level, :string
    add_column :spells, :school, :string
    add_column :spells, :class_names, :string
    add_column :spells, :higher_level, :text
    add_column :spells, :archetype, :string
    add_column :spells, :domains, :string
    add_column :spells, :oaths, :string
    add_column :spells, :circles, :string
    add_column :spells, :patrons, :string
  end
end
