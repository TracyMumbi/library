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

ActiveRecord::Schema[7.0].define(version: 2023_07_11_053448) do
  create_table "bookdimensions", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "genre"
    t.integer "publicationyear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "datedimensions", force: :cascade do |t|
    t.string "date"
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facttables", force: :cascade do |t|
    t.integer "datekey_id"
    t.integer "bookkey_id"
    t.integer "memberkey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberdimensions", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "contactnumber"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
