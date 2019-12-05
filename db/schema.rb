# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_05_010223) do

  create_table "gears", force: :cascade do |t|
    t.integer "resort_id"
    t.string "list"
    t.string "link"
    t.index ["resort_id"], name: "index_gears_on_resort_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.integer "resort_id"
    t.string "name"
    t.string "price"
    t.float "rating"
    t.string "link"
    t.index ["resort_id"], name: "index_hotels_on_resort_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.integer "resort_id"
    t.string "name"
    t.string "price"
    t.index ["resort_id"], name: "index_lessons_on_resort_id"
  end

  create_table "lodgings", force: :cascade do |t|
    t.integer "resort_id"
    t.string "hotel"
    t.integer "hotel_price"
    t.string "car_camping"
    t.index ["resort_id"], name: "index_lodgings_on_resort_id"
  end

  create_table "resorts", force: :cascade do |t|
    t.string "name"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "resort_id"
    t.string "name"
    t.string "price"
    t.index ["resort_id"], name: "index_tickets_on_resort_id"
  end

  create_table "user_resorts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "resort_id"
    t.index ["resort_id"], name: "index_user_resorts_on_resort_id"
    t.index ["user_id"], name: "index_user_resorts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "gears", "resorts"
  add_foreign_key "hotels", "resorts"
  add_foreign_key "lessons", "resorts"
  add_foreign_key "lodgings", "resorts"
  add_foreign_key "tickets", "resorts"
  add_foreign_key "user_resorts", "resorts"
  add_foreign_key "user_resorts", "users"
end
