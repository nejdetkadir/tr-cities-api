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

ActiveRecord::Schema.define(version: 2022_01_30_150641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name", null: false
    t.string "alpha_2_code", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alpha_2_code"], name: "index_cities_on_alpha_2_code", unique: true
    t.index ["name"], name: "index_cities_on_name", unique: true
  end

  create_table "districts", force: :cascade do |t|
    t.bigint "town_id", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["town_id", "name"], name: "index_districts_on_town_id_and_name", unique: true
    t.index ["town_id"], name: "index_districts_on_town_id"
  end

  create_table "quarters", force: :cascade do |t|
    t.bigint "district_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["district_id", "name"], name: "index_quarters_on_district_id_and_name", unique: true
    t.index ["district_id"], name: "index_quarters_on_district_id"
  end

  create_table "towns", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id", "name"], name: "index_towns_on_city_id_and_name", unique: true
    t.index ["city_id"], name: "index_towns_on_city_id"
  end

  add_foreign_key "districts", "towns"
  add_foreign_key "quarters", "districts"
  add_foreign_key "towns", "cities"
end
