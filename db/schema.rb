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

ActiveRecord::Schema.define(version: 2021_04_20_181337) do

  create_table "kpi_data", force: :cascade do |t|
    t.date "date"
    t.string "kpi"
    t.integer "data_point"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_kpi_data_on_user_id"
  end

  create_table "user_dashboards", force: :cascade do |t|
    t.string "dashboard_title"
    t.string "chart_type"
    t.integer "quarter_number"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "year"
    t.index ["user_id"], name: "index_user_dashboards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "bio"
    t.string "avatar"
    t.string "first_name"
    t.string "last_name"
    t.string "company_name"
    t.string "active_charts"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "kpi_data", "users"
  add_foreign_key "user_dashboards", "users"
end
