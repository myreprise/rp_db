# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150515102038) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.date     "publication_date"
    t.string   "publication"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "tier"
    t.float    "area"
    t.string   "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "longitude"
    t.float    "lattitude"
  end

  create_table "developers", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.boolean  "listed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "name"
    t.integer  "population"
    t.string   "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "gfa"
    t.float    "longitude"
    t.float    "lattitude"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "developer_id"
    t.float    "turnover"
    t.integer  "city_id"
    t.boolean  "existing"
    t.integer  "parking"
    t.text     "tenants",      default: ""
    t.string   "address",      default: ""
    t.integer  "district_id"
  end

  create_table "re_metrics", force: :cascade do |t|
    t.integer  "city_id"
    t.date     "month"
    t.float    "new_constructed_residential"
    t.float    "secondary_residential"
    t.float    "re_invest_residential"
    t.float    "re_invest_commercial"
    t.float    "floor_space_started_residential"
    t.float    "floor_space_started_commercial"
    t.float    "floor_space_construction_residential"
    t.float    "floor_space_construction_commercial"
    t.float    "floor_space_sold_residential"
    t.float    "floor_space_sold_commercial"
    t.float    "building_sold_residential"
    t.float    "buidling_sold_commercial"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end