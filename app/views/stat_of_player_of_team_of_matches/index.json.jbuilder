json.array!(@stat_of_player_of_team_of_matches) do |stat_of_player_of_team_of_match|
  json.extract! stat_of_player_of_team_of_match, :id, :player_of_team_of_match_id, :stat_id, :value, :time
  json.url stat_of_player_of_team_of_match_url(stat_of_player_of_team_of_match, format: :json)
end
