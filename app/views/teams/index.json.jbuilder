json.array!(@teams) do |team|
  json.extract! team, :id, :name, :initials, :foundation, :members, :stadium_id, :shield
  json.url team_url(team, format: :json)
end
