class RawIngredient < ApplicationRecord
  include Uidable

  has_many :dependent_ingredients
  has_many :intermediate_ingredients, through: :dependent_ingredients

  has_many :raw_ingredients_dishes
  has_many :dishes, through: :raw_ingredients_dishes

  belongs_to :measure_unit
end
