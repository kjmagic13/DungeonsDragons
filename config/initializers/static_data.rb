ABILITIES = YAML.load_file("#{Rails.root}/lib/assets/modifiers.yml")

SKILLS = YAML.load_file("#{Rails.root}/lib/assets/skills.yml").map{ |s| OpenStruct.new s }

RACES = YAML.load_file("#{Rails.root}/lib/assets/races.yml").map{ |r| OpenStruct.new r }

SPELLS = JSON.parse File.read("#{Rails.root}/lib/assets/spells.json")
