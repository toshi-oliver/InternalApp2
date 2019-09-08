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

ActiveRecord::Schema.define(version: 2019_09_01_094736) do

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "client_name", null: false
    t.string "email", null: false
    t.string "near_station"
    t.string "parking_address", null: false
    t.boolean "midterm_cancellation", default: true
    t.integer "year_period"
    t.integer "month_period"
    t.integer "cancellation_money"
    t.integer "rent"
    t.string "tax_type"
    t.string "land_estate"
    t.integer "parking_possible_number"
    t.integer "parking_size"
    t.string "parking_size_unit"
    t.date "start_date"
    t.date "end_date"
    t.integer "desired_rent"
    t.text "client_textarea"
    t.text "user_textarea"
    t.bigint "user_id", default: -1
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "parking_present", default: true
    t.string "phone_number"
    t.string "contract_company"
    t.integer "cancellation_period"
    t.index ["client_name"], name: "index_posts_on_client_name"
    t.index ["deleted_at"], name: "index_posts_on_deleted_at"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
