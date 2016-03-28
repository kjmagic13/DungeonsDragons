class AddDefaultsToRankAndXp < ActiveRecord::Migration
	def change
		change_column :players, :rank, :integer, default: 1
		change_column :players, :xp, :integer, default: 0
		change_column :players, :personality, :text, default: nil
		change_column :players, :ideals, :text, default: nil
		change_column :players, :bonds, :text, default: nil
		change_column :players, :flaws, :text, default: nil
	end
end
