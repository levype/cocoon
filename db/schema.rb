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

ActiveRecord::Schema.define(version: 20151109114631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ads", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "price"
    t.integer  "space"
    t.integer  "rooms"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "joinlocationstousers", force: :cascade do |t|
    t.integer  "location_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "joinlocationstousers", ["location_id"], name: "index_joinlocationstousers_on_location_id", using: :btree
  add_index "joinlocationstousers", ["user_id"], name: "index_joinlocationstousers_on_user_id", using: :btree

  create_table "landlords", force: :cascade do |t|
    t.string   "name"
    t.string   "tel"
    t.string   "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.integer  "insee"
    t.integer  "cp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "add_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "photos", ["add_id"], name: "index_photos_on_add_id", using: :btree

  create_table "pings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "add_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pings", ["add_id"], name: "index_pings_on_add_id", using: :btree
  add_index "pings", ["user_id"], name: "index_pings_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "min_price"
    t.integer  "max_price"
    t.integer  "min_space"
    t.integer  "max_space"
    t.integer  "min_room"
    t.integer  "max_room"
    t.boolean  "furnished"
    t.boolean  "house"
    t.boolean  "flat"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "joinlocationstousers", "locations"
  add_foreign_key "joinlocationstousers", "users"
  add_foreign_key "photos", "ads", column: "add_id"
  add_foreign_key "pings", "ads", column: "add_id"
  add_foreign_key "pings", "users"
end
