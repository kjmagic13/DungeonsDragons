json.array!(@player_spells) do |player_spell|
  json.extract! player_spell, :id
  json.url player_spell_url(player_spell, format: :json)
end
