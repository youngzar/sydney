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

ActiveRecord::Schema.define(version: 20200404233823) do

  create_table "drink_menus", force: :cascade do |t|
    t.integer  "size"
    t.string   "types"
    t.text     "description"
    t.integer  "sushi_menu_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "drink_menus", ["sushi_menu_id"], name: "index_drink_menus_on_sushi_menu_id"

  create_table "sushi_menus", force: :cascade do |t|
    t.string   "food_type"
    t.boolean  "has_order"
    t.integer  "menus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
