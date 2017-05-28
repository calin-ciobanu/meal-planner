json.extract! dish, :id, :name, :uid, :type, :stock, :can_make, :relative_preparation_time, :instructions, :recipe_url, :created_at, :updated_at
json.url dish_url(dish, format: :json)
