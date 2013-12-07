json.array!(@canteens) do |canteen|
  json.extract! canteen, :id, :name, :webcam_url
  json.url canteen_url(canteen, format: :json)
end
