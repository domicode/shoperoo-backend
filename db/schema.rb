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

ActiveRecord::Schema.define(version: 20180915202958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "co2_usage"
    t.float "water_usage"
    t.float "people_usage"
    t.float "energy_usage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "substitute_id"
  end

  create_table "season_countries", force: :cascade do |t|
    t.bigint "country_id"
    t.bigint "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_season_countries_on_country_id"
    t.index ["season_id"], name: "index_season_countries_on_season_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "january"
    t.boolean "february"
    t.boolean "march"
    t.boolean "april"
    t.boolean "may"
    t.boolean "june"
    t.boolean "july"
    t.boolean "august"
    t.boolean "september"
    t.boolean "october"
    t.boolean "november"
    t.boolean "december"
    t.index ["product_id"], name: "index_seasons_on_product_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.float "people_usage"
    t.float "sustainability_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "substitutes", force: :cascade do |t|
    t.bigint "product_id"
    t.integer "substitute_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_substitutes_on_product_id"
  end

  add_foreign_key "substitutes", "products"
end
