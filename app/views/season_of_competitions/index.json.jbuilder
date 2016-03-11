json.array!(@season_of_competitions) do |season_of_competition|
  json.extract! season_of_competition, :id, :season_id, :competition_id, :name
  json.url season_of_competition_url(season_of_competition, format: :json)
end
