# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_17_172040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "food_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_favourites_on_food_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "food_categories", force: :cascade do |t|
    t.bigint "food_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_food_categories_on_category_id"
    t.index ["food_id"], name: "index_food_categories_on_food_id"
  end

  create_table "food_plans", force: :cascade do |t|
    t.string "quantity"
    t.bigint "food_id", null: false
    t.bigint "plan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_food_plans_on_food_id"
    t.index ["plan_id"], name: "index_food_plans_on_plan_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "image_url"
    t.string "name"
    t.text "description"
    t.boolean "lactose_free", default: false
    t.boolean "vegeterian", default: false
    t.boolean "kids_friendly", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_foods_on_name", unique: true
  end

  create_table "lists", force: :cascade do |t|
    t.bigint "plan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plan_id"], name: "index_lists_on_plan_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_plans_on_user_id"
  end

  create_table "preparations", force: :cascade do |t|
    t.text "step"
    t.bigint "food_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_preparations_on_food_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "ingredients"
    t.float "two"
    t.float "four"
    t.string "measure"
    t.bigint "food_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_recipes_on_food_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.string "quantity", default: "two"
    t.bigint "user_id", null: false
    t.bigint "food_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_shopping_carts_on_food_id"
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "favourites", "foods"
  add_foreign_key "favourites", "users"
  add_foreign_key "food_categories", "categories"
  add_foreign_key "food_categories", "foods"
  add_foreign_key "food_plans", "foods"
  add_foreign_key "food_plans", "plans"
  add_foreign_key "lists", "plans"
  add_foreign_key "plans", "users"
  add_foreign_key "preparations", "foods"
  add_foreign_key "recipes", "foods"
  add_foreign_key "shopping_carts", "foods"
  add_foreign_key "shopping_carts", "users"
end
