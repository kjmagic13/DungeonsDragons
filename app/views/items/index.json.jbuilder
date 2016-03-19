json.array!(@items) do |item|
  json.extract! item, :id, :player_id, :quantity, :name, :notes
  json.url item_url(item, format: :json)
end
