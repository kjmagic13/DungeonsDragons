json.array!(@spells) do |spell|
  json.extract! spell, :id, :name, :link
  json.url spell_url(spell, format: :json)
end
