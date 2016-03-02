json.array!(@stadia) do |stadium|
  json.extract! stadium, :id, :name, :nickname, :foundation, :capacity, :picture
  json.url stadium_url(stadium, format: :json)
end
