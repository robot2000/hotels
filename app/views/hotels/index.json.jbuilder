json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :price, :number, :rating
  json.url hotel_url(hotel, format: :json)
end
