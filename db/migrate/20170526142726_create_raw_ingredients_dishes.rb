class CreateRawIngredientsDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :raw_ingredients_dishes do |t|
      t.references :raw_ingredient, foreign_key: true
      t.references :dish, foreign_key: true
      t.integer :quantity
      t.references :measure_unit, foreign_key: true
      t.string :dependence_level, index: true # can be required, alternative, optional
    end
  end
end
