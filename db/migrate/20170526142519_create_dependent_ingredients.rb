class CreateDependentIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :dependent_ingredients do |t|
      t.references :raw_ingredient, foreign_key: true
      t.references :intermediate_ingredient, foreign_key: true
      t.integer :quantity
      t.references :measure_unit, foreign_key: true
    end
  end
end
