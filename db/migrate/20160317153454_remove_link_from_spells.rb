class RemoveLinkFromSpells < ActiveRecord::Migration
  def change
	  remove_column :spells, :link
  end
end
