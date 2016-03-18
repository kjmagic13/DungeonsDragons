# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Spells
if false
	# Spell.destroy_all
	attrib_keys = ["name", "desc", "page", "range", "components", "material", "ritual", "duration", "concentration", "casting_time", "level", "school", "class_names", "higher_level", "archetype", "domains", "oaths", "circles", "patrons"]
	SPELLS.each do |spell|
		new_spell = Spell.new
		attrib_keys.each do |k|
			# puts spell[k] if spell[k].present?
			new_spell.send("#{k}=", spell[k]) if spell[k].present?
			new_spell.save!
		end
	end
end
