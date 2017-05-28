class DependentIngredient < ApplicationRecord
  belongs_to :raw_ingredient
  belongs_to :intermediate_ingredient
end