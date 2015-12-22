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

ActiveRecord::Schema.define(version: 20151222010954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.integer  "emp_num"
    t.string   "emp_class"
    t.string   "emp_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.integer  "man_num"
    t.string   "man_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "menus", force: :cascade do |t|
    t.string   "item_name"
    t.string   "item_class"
    t.integer  "item_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mods", force: :cascade do |t|
    t.string   "mod_name"
    t.string   "mod_class"
    t.integer  "mod_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "table_num"
    t.string   "emp_name"
    t.string   "item_name"
    t.integer  "item_price"
    t.string   "mod_name"
    t.integer  "mod_price"
    t.integer  "party_id"
    t.integer  "menu_id"
    t.integer  "mod_id"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "complete"
  end

  add_index "orders", ["employee_id"], name: "index_orders_on_employee_id", using: :btree
  add_index "orders", ["menu_id"], name: "index_orders_on_menu_id", using: :btree
  add_index "orders", ["mod_id"], name: "index_orders_on_mod_id", using: :btree
  add_index "orders", ["party_id"], name: "index_orders_on_party_id", using: :btree

  create_table "parties", force: :cascade do |t|
    t.integer  "table_num"
    t.string   "last_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "order_id"
    t.integer  "menu_id"
    t.integer  "mod_id"
    t.integer  "employee_id"
  end

  add_foreign_key "orders", "employees"
  add_foreign_key "orders", "menus"
  add_foreign_key "orders", "mods"
  add_foreign_key "orders", "parties"
end
