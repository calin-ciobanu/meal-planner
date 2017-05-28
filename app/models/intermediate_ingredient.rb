class IntermediateIngredient < ApplicationRecord
  include Uidable

  has_many :dependent_ingredients
  has_many :raw_ingredients, through: :dependent_ingredients

  has_many :intermediate_ingredients_dishes
  has_many :dishes, through: :intermediate_ingredients_dishes

  has_many :intermediate_ingredients, class_name: 'IntermediateIngredient', foreign_key: 'parent_id'

  belongs_to :measure_unit
end
