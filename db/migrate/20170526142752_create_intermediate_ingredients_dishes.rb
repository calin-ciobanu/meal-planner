class CreateIntermediateIngredientsDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :intermediate_ingredients_dishes do |t|
      t.references :intermediate_ingredient, foreign_key: true, index: { name: 'idx_intermed_ingred_dishes_on_intermed_ingred_id' }
      t.references :dish, foreign_key: true, index: { name: 'idx_intermed_ingred_dishes_on_dish_id' }
      t.integer :quantity
      t.references :measure_unit, foreign_key: true
      t.string :dependence_level, index: true # can be required, alternative, optional
    end
  end
end
