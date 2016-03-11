json.array!(@competition_types) do |competition_type|
  json.extract! competition_type, :id, :description
  json.url competition_type_url(competition_type, format: :json)
end
