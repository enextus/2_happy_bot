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

ActiveRecord::Schema.define(version: 2018_04_17_063537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buttons", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "button_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chats", force: :cascade do |t|
    t.bigint "telegram_chat_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_chats_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.boolean "response", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "chat_id"
    t.index ["chat_id"], name: "index_requests_on_chat_id"
  end

  create_table "statebuttons", force: :cascade do |t|
    t.bigint "data"
    t.bigint "date"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "chat_id"
    t.index ["chat_id"], name: "index_statebuttons_on_chat_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "chats", "users"
  add_foreign_key "requests", "chats"
  add_foreign_key "statebuttons", "chats"
end
