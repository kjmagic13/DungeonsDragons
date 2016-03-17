class AddInspAndProfBonusToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :inspiration, :integer, default: 0
    add_column :players, :proficiency_bonus, :integer, default: 0
  end
end
