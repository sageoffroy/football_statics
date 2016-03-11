json.array!(@competitions) do |competition|
  json.extract! competition, :id, :competition_type_id, :name
  json.url competition_url(competition, format: :json)
end
