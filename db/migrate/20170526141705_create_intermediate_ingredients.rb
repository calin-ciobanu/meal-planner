class CreateIntermediateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :intermediate_ingredients do |t|
      t.string :name
      t.string :uid
      t.integer :stock
      t.references :measure_unit, foreign_key: true
      t.integer :price
      t.references :currency, foreign_key: true
      t.boolean :can_make
      t.integer :relative_preparation_time
      t.text :instructions
      t.string :recipe_urls, array: true, default: []
      t.bigint :parent_id, index: true
      t.timestamps
    end
  end
end
