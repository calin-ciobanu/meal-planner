class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :uid
      t.string :type
      t.integer :stock
      t.references :measure_unit, foreign_key: true
      t.boolean :can_make
      t.integer :relative_preparation_time
      t.text :instructions
      t.string :recipe_urls, array: true

      t.timestamps
    end
  end
end
