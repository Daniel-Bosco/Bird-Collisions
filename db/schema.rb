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

ActiveRecord::Schema.define(version: 2021_06_14_100737) do

  create_table "aircrafts", force: :cascade do |t|
    t.string "category"
    t.string "certification"
    t.string "model"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_airports_on_city_id"
  end

  create_table "birds", force: :cascade do |t|
    t.string "common_name"
    t.string "scientific_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "collisions", force: :cascade do |t|
    t.integer "bird_id", null: false
    t.integer "datum_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bird_id"], name: "index_collisions_on_bird_id"
    t.index ["datum_id"], name: "index_collisions_on_datum_id"
  end

  create_table "data", force: :cascade do |t|
    t.date "date"
    t.string "flight_phase"
    t.integer "airport_id", null: false
    t.integer "flight_id", null: false
    t.integer "weather_id", null: false
    t.integer "report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["airport_id"], name: "index_data_on_airport_id"
    t.index ["flight_id"], name: "index_data_on_flight_id"
    t.index ["report_id"], name: "index_data_on_report_id"
    t.index ["weather_id"], name: "index_data_on_weather_id"
  end

  create_table "flights", force: :cascade do |t|
    t.integer "aircraft_id", null: false
    t.integer "pilot_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["aircraft_id"], name: "index_flights_on_aircraft_id"
    t.index ["pilot_id"], name: "index_flights_on_pilot_id"
  end

  create_table "pilots", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "privilege_level"
    t.integer "document"
    t.date "birth_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reports", force: :cascade do |t|
    t.float "airline_expense"
    t.float "airport_expense"
    t.float "insurance_expense"
    t.float "public_expense"
    t.integer "delayed_flights"
    t.integer "fatal_victims"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weathers", force: :cascade do |t|
    t.float "celsius_temperature"
    t.float "humidity"
    t.float "wind_speed"
    t.float "average_rainfall"
    t.float "insolation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "airports", "cities"
  add_foreign_key "cities", "states"
  add_foreign_key "collisions", "birds"
  add_foreign_key "collisions", "data"
  add_foreign_key "data", "airports"
  add_foreign_key "data", "flights"
  add_foreign_key "data", "reports"
  add_foreign_key "data", "weathers"
  add_foreign_key "flights", "aircrafts"
  add_foreign_key "flights", "pilots"
end
