json.array!(@player_of_team_matches) do |player_of_team_match|
  json.extract! player_of_team_match, :id, :player_of_team_id, :match_id
  json.url player_of_team_match_url(player_of_team_match, format: :json)
end
