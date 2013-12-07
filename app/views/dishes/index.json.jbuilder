json.array!(@dishes) do |dish|
  json.extract! dish, :id, :name, :dish_type, :kcal
  json.url dish_url(dish, format: :json)
end
