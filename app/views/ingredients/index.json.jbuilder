json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :vegetarian, :vegan, :halal, :burzum, :frozen, :lactose, :kosher, :gluten
  json.url ingredient_url(ingredient, format: :json)
end
