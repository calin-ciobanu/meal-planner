class Dish < ApplicationRecord
  include Uidable

  has_many :intermediate_ingredients_dishes
  has_many :intermediate_ingredients, through: :intermediate_ingredients_dishes

  has_many :raw_ingredients_dishes
  has_many :raw_ingredients, through: :raw_ingredients_dishes

  belongs_to :measure_unit
end
