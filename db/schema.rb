# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170528040620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "currencies", force: :cascade do |t|
    t.string "iso_code"
  end

  create_table "dependent_ingredients", force: :cascade do |t|
    t.bigint "raw_ingredient_id"
    t.bigint "intermediate_ingredient_id"
    t.integer "quantity"
    t.bigint "measure_unit_id"
    t.index ["intermediate_ingredient_id"], name: "index_dependent_ingredients_on_intermediate_ingredient_id"
    t.index ["measure_unit_id"], name: "index_dependent_ingredients_on_measure_unit_id"
    t.index ["raw_ingredient_id"], name: "index_dependent_ingredients_on_raw_ingredient_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.string "uid"
    t.string "type"
    t.integer "stock"
    t.bigint "measure_unit_id"
    t.boolean "can_make"
    t.integer "relative_preparation_time"
    t.text "instructions"
    t.string "recipe_urls", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["measure_unit_id"], name: "index_dishes_on_measure_unit_id"
  end

  create_table "intermediate_ingredients", force: :cascade do |t|
    t.string "name"
    t.string "uid"
    t.integer "stock"
    t.bigint "measure_unit_id"
    t.integer "price"
    t.bigint "currency_id"
    t.boolean "can_make"
    t.integer "relative_preparation_time"
    t.text "instructions"
    t.string "recipe_urls", default: [], array: true
    t.bigint "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_intermediate_ingredients_on_currency_id"
    t.index ["measure_unit_id"], name: "index_intermediate_ingredients_on_measure_unit_id"
    t.index ["parent_id"], name: "index_intermediate_ingredients_on_parent_id"
  end

  create_table "intermediate_ingredients_dishes", force: :cascade do |t|
    t.bigint "intermediate_ingredient_id"
    t.bigint "dish_id"
    t.integer "quantity"
    t.bigint "measure_unit_id"
    t.string "dependence_level"
    t.index ["dependence_level"], name: "index_intermediate_ingredients_dishes_on_dependence_level"
    t.index ["dish_id"], name: "idx_intermed_ingred_dishes_on_dish_id"
    t.index ["intermediate_ingredient_id"], name: "idx_intermed_ingred_dishes_on_intermed_ingred_id"
    t.index ["measure_unit_id"], name: "index_intermediate_ingredients_dishes_on_measure_unit_id"
  end

  create_table "measure_units", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "system_type"
  end

  create_table "raw_ingredients", force: :cascade do |t|
    t.string "name"
    t.string "uid"
    t.integer "stock"
    t.bigint "measure_unit_id"
    t.decimal "price"
    t.bigint "currency_id"
    t.integer "shopping_quantity"
    t.string "shop_urls", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_raw_ingredients_on_currency_id"
    t.index ["measure_unit_id"], name: "index_raw_ingredients_on_measure_unit_id"
  end

  create_table "raw_ingredients_dishes", force: :cascade do |t|
    t.bigint "raw_ingredient_id"
    t.bigint "dish_id"
    t.integer "quantity"
    t.bigint "measure_unit_id"
    t.string "dependence_level"
    t.index ["dependence_level"], name: "index_raw_ingredients_dishes_on_dependence_level"
    t.index ["dish_id"], name: "index_raw_ingredients_dishes_on_dish_id"
    t.index ["measure_unit_id"], name: "index_raw_ingredients_dishes_on_measure_unit_id"
    t.index ["raw_ingredient_id"], name: "index_raw_ingredients_dishes_on_raw_ingredient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dependent_ingredients", "intermediate_ingredients"
  add_foreign_key "dependent_ingredients", "measure_units"
  add_foreign_key "dependent_ingredients", "raw_ingredients"
  add_foreign_key "dishes", "measure_units"
  add_foreign_key "intermediate_ingredients", "currencies"
  add_foreign_key "intermediate_ingredients", "measure_units"
  add_foreign_key "intermediate_ingredients_dishes", "dishes"
  add_foreign_key "intermediate_ingredients_dishes", "intermediate_ingredients"
  add_foreign_key "intermediate_ingredients_dishes", "measure_units"
  add_foreign_key "raw_ingredients", "currencies"
  add_foreign_key "raw_ingredients", "measure_units"
  add_foreign_key "raw_ingredients_dishes", "dishes"
  add_foreign_key "raw_ingredients_dishes", "measure_units"
  add_foreign_key "raw_ingredients_dishes", "raw_ingredients"
end
