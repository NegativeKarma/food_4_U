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

ActiveRecord::Schema.define(version: 20180116133813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dish_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_dish_categories_on_menu_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.bigint "dish_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "price"
    t.index ["dish_category_id"], name: "index_dishes_on_dish_category_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.bigint "restaurant_id"
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dish_categories", "menus"
  add_foreign_key "dishes", "dish_categories"
  add_foreign_key "menus", "restaurants"
end
