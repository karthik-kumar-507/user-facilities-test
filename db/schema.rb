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

ActiveRecord::Schema.define(version: 2020_10_20_182259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "facilities", force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_facilities_on_name"
  end

  create_table "facilities_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "facility_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["facility_id"], name: "index_facilities_users_on_facility_id"
    t.index ["user_id"], name: "index_facilities_users_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_roles_on_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", limit: 100, null: false
    t.string "last_name", limit: 100, null: false
    t.string "email", limit: 100, null: false
    t.date "dob", null: false
    t.string "gender", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["gender"], name: "index_users_on_gender"
    t.index ["last_name"], name: "index_users_on_last_name"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "facilities_users", "facilities"
  add_foreign_key "facilities_users", "users"
  add_foreign_key "users", "roles"
end
