json.array!(@beverages) do |beverage|
  json.extract! beverage, :id, :name
  json.url beverage_url(beverage, format: :json)
end
