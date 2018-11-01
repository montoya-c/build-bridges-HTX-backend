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

ActiveRecord::Schema.define(version: 2018_11_01_142335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_details", force: :cascade do |t|
    t.string "name"
    t.bigint "language_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_category_details_on_category_id"
    t.index ["language_id"], name: "index_category_details_on_language_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resource_categories", force: :cascade do |t|
    t.integer "category_id"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resource_details", force: :cascade do |t|
    t.string "program_name"
    t.text "description"
    t.text "services"
    t.string "address"
    t.string "telephone"
    t.string "website"
    t.string "hours"
    t.text "eligibility"
    t.string "language_spoken"
    t.bigint "resource_id"
    t.bigint "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_resource_details_on_language_id"
    t.index ["resource_id"], name: "index_resource_details_on_resource_id"
  end

  create_table "resources", force: :cascade do |t|
    t.float "longitude"
    t.float "latitude"
    t.bigint "user_id"
    t.bigint "resource_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_category_id"], name: "index_resources_on_resource_category_id"
    t.index ["user_id"], name: "index_resources_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "organization_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "category_details", "categories"
  add_foreign_key "category_details", "languages"
  add_foreign_key "resource_details", "languages"
  add_foreign_key "resource_details", "resources"
  add_foreign_key "resources", "resource_categories"
  add_foreign_key "resources", "users"
end
