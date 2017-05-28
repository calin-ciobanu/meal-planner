class RawIngredientsDish < ApplicationRecord
  belongs_to :raw_ingredient
  belongs_to :dish
end