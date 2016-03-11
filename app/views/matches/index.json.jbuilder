json.array!(@matches) do |match|
  json.extract! match, :id, :play_date, :team_1_id, :team_2_id, :season_of_competition_id
  json.url match_url(match, format: :json)
end
