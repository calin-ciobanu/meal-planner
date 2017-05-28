json.extract! raw_ingredient, :id, :name, :uid, :stock, :price, :shop_urls, :created_at, :updated_at
json.url raw_ingredient_url(raw_ingredient, format: :json)
