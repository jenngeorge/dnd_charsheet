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

ActiveRecord::Schema.define(version: 20160708200118) do

  create_table "backgrounds", force: :cascade do |t|
    t.string   "background_type"
    t.string   "race"
    t.string   "subrace"
    t.string   "age"
    t.string   "height"
    t.string   "weight"
    t.string   "alignment"
    t.text     "appearance"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "backgrounds", ["character_id"], name: "index_backgrounds_on_character_id"

  create_table "basics", force: :cascade do |t|
    t.string   "background"
    t.string   "race"
    t.string   "subrace"
    t.string   "age"
    t.string   "height"
    t.string   "weight"
    t.string   "alignment"
    t.text     "appearance"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "basics", ["character_id"], name: "index_basics_on_character_id"

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
