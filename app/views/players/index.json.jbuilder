json.array!(@players) do |player|
  json.extract! player, :id, :person_id, :dominant_foot_id, :debut, :position
  json.url player_url(player, format: :json)
end
