json.array!(@coaches) do |coach|
  json.extract! coach, :id, :person_id
  json.url coach_url(coach, format: :json)
end
