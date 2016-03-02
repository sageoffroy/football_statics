json.array!(@dominant_foots) do |dominant_foot|
  json.extract! dominant_foot, :id, :description
  json.url dominant_foot_url(dominant_foot, format: :json)
end
