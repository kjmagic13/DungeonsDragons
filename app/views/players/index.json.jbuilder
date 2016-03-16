json.array!(@players) do |player|
  json.extract! player, :id, :name, :rank, :class_name, :race, :alignment, :xp
  json.url player_url(player, format: :json)
end
