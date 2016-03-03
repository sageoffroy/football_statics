json.array!(@player_of_teams) do |player_of_team|
  json.extract! player_of_team, :id, :player_id, :team_id, :contract_start, :contract_end, :shirt_number
  json.url player_of_team_url(player_of_team, format: :json)
end
