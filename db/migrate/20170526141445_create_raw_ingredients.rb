class CreateRawIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :raw_ingredients do |t|
      t.string :name
      t.string :uid
      t.integer :stock
      t.references :measure_unit, foreign_key: true
      t.decimal :price
      t.references :currency, foreign_key: true
      t.integer :shopping_quantity
      t.string :shop_urls, array: true

      t.timestamps
    end
  end
end
