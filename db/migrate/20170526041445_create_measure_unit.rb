class CreateMeasureUnit < ActiveRecord::Migration[5.1]
  def change
    create_table :measure_units do |t|
      t.string :name
      t.string :code
      t.string :system_type
    end
  end
end
