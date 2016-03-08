json.array!(@stats) do |stat|
  json.extract! stat, :id, :description, :binding_key
  json.url stat_url(stat, format: :json)
end
