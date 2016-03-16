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

ActiveRecord::Schema.define(version: 20160316190522) do

  create_table "player_spells", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "spell_id"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "player_spells", ["player_id"], name: "index_player_spells_on_player_id"
  add_index "player_spells", ["spell_id"], name: "index_player_spells_on_spell_id"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "rank"
    t.string   "class_name"
    t.string   "race"
    t.string   "alignment"
    t.integer  "xp"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "hp",           default: 0
    t.integer  "hp_max",       default: 0
    t.integer  "armor",        default: 0
    t.integer  "initiative",   default: 0
    t.integer  "speed",        default: 1
    t.integer  "strength",     default: 0
    t.integer  "dexterity",    default: 0
    t.integer  "constitution", default: 0
    t.integer  "intelligence", default: 0
    t.integer  "wisdom",       default: 0
    t.integer  "charisma",     default: 0
    t.text     "personality",  default: "..."
    t.text     "ideals",       default: "..."
    t.text     "bonds",        default: "..."
    t.text     "flaws",        default: "..."
  end

  create_table "spells", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
