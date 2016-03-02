json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :picture, :birth_date, :weight, :height, :nationality_id
  json.url person_url(person, format: :json)
end
