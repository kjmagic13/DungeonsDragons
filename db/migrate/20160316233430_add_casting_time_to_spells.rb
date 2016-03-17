class AddCastingTimeToSpells < ActiveRecord::Migration
  def change
    add_column :spells, :casting_time, :string, default: 'action'
  end
end
