ABILITIES = YAML.load_file("#{Rails.root}/lib/assets/abilities.yml")

SKILLS = JSON.parse File.read("#{Rails.root}/lib/assets/skills.json"), object_class: OpenStruct

RACES = JSON.parse File.read("#{Rails.root}/lib/assets/races.json"), object_class: OpenStruct

SPELLS = JSON.parse File.read("#{Rails.root}/lib/assets/spells.json")
