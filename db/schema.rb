# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131208113620) do

  create_table "canteens", force: true do |t|
    t.string   "name"
    t.string   "webcam_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dishes", force: true do |t|
    t.string   "name"
    t.string   "dish_type"
    t.integer  "kcal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "menu_id"
    t.integer  "canteen_id"
  end

  create_table "dishes_ingredients", force: true do |t|
    t.integer "dish_id"
    t.integer "ingredient_id"
  end

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.boolean  "vegetarian"
    t.boolean  "vegan"
    t.boolean  "halal"
    t.boolean  "burzum"
    t.boolean  "frozen"
    t.boolean  "lactose"
    t.boolean  "kosher"
    t.boolean  "gluten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", force: true do |t|
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "canteen_id"
  end

end
