class IntermediateIngredientsDish < ApplicationRecord
  belongs_to :intermediate_ingredient
  belongs_to :dish
end
