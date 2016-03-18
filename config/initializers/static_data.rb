MODIFIERS = YAML.load_file("#{Rails.root}/lib/assets/modifiers.yml")
SKILLS = YAML.load_file("#{Rails.root}/lib/assets/skills.yml")
SPELLS = JSON.parse File.read("#{Rails.root}/lib/assets/spells.json")
