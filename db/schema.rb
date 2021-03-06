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

ActiveRecord::Schema.define(version: 20190304152715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blues", force: :cascade do |t|
    t.string "danceability"
    t.string "energy"
    t.string "loudness"
    t.string "mode"
    t.string "valence"
    t.string "tempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_blues_on_user_id"
  end

  create_table "greens", force: :cascade do |t|
    t.string "danceability"
    t.string "energy"
    t.string "loudness"
    t.string "mode"
    t.string "valence"
    t.string "tempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_greens_on_user_id"
  end

  create_table "oranges", force: :cascade do |t|
    t.string "danceability"
    t.string "energy"
    t.string "loudness"
    t.string "mode"
    t.string "valence"
    t.string "tempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_oranges_on_user_id"
  end

  create_table "purples", force: :cascade do |t|
    t.string "danceability"
    t.string "energy"
    t.string "loudness"
    t.string "mode"
    t.string "valence"
    t.string "tempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_purples_on_user_id"
  end

  create_table "reds", force: :cascade do |t|
    t.string "danceability"
    t.string "energy"
    t.string "loudness"
    t.string "mode"
    t.string "valence"
    t.string "tempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_reds_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "favoritegenre"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "yellows", force: :cascade do |t|
    t.string "danceability"
    t.string "energy"
    t.string "loudness"
    t.string "mode"
    t.string "valence"
    t.string "tempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_yellows_on_user_id"
  end

  add_foreign_key "blues", "users"
  add_foreign_key "greens", "users"
  add_foreign_key "oranges", "users"
  add_foreign_key "purples", "users"
  add_foreign_key "reds", "users"
  add_foreign_key "yellows", "users"
end
