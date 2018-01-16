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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180116144940) do
=======
ActiveRecord::Schema.define(version: 20180116133813) do
>>>>>>> b4a4c7496a6c39522e9c575be3a0551e33fe660b

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.bigint "restaurant_id"
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
<<<<<<< HEAD
    t.bigint "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_product_categories_on_menu_id"
=======
    t.bigint "dish_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "price"
    t.index ["dish_category_id"], name: "index_dishes_on_dish_category_id"
>>>>>>> b4a4c7496a6c39522e9c575be3a0551e33fe660b
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.bigint "product_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "menus", "restaurants"
  add_foreign_key "product_categories", "menus"
  add_foreign_key "products", "product_categories"
end
