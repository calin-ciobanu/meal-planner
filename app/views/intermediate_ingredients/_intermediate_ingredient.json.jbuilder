json.extract! intermediate_ingredient, :id, :name, :uid, :stock, :price, :can_make, :relative_preparation_time, :recipe_url, :created_at, :updated_at
json.url intermediate_ingredient_url(intermediate_ingredient, format: :json)
