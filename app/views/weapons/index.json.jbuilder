json.array!(@weapons) do |weapon|
  json.extract! weapon, :id, :name, :attack, :damage, :player_id
  json.url weapon_url(weapon, format: :json)
end
