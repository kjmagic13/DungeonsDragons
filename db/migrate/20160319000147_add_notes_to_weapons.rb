class AddNotesToWeapons < ActiveRecord::Migration
  def change
    add_column :weapons, :notes, :text
  end
end
