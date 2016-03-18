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

ActiveRecord::Schema.define(version: 20160318185312) do

  create_table "player_spells", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "spell_id"
    t.integer  "level"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "available",  default: true
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
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "hp",                         default: 0
    t.integer  "hp_max",                     default: 0
    t.integer  "armor",                      default: 0
    t.integer  "initiative",                 default: 0
    t.integer  "speed",                      default: 1
    t.integer  "strength",                   default: 0
    t.integer  "dexterity",                  default: 0
    t.integer  "constitution",               default: 0
    t.integer  "intelligence",               default: 0
    t.integer  "wisdom",                     default: 0
    t.integer  "charisma",                   default: 0
    t.text     "personality",                default: "..."
    t.text     "ideals",                     default: "..."
    t.text     "bonds",                      default: "..."
    t.text     "flaws",                      default: "..."
    t.integer  "inspiration",                default: 0
    t.integer  "proficiency_bonus",          default: 0
    t.integer  "mod_Strength",               default: 0
    t.integer  "mod_Dexterity",              default: 0
    t.integer  "mod_Constitution",           default: 0
    t.integer  "mod_Intelligence",           default: 0
    t.integer  "mod_Wisdom",                 default: 0
    t.integer  "mod_Charisma",               default: 0
    t.boolean  "mod_Strength_prof"
    t.boolean  "mod_Dexterity_prof"
    t.boolean  "mod_Constitution_prof"
    t.boolean  "mod_Intelligence_prof"
    t.boolean  "mod_Wisdom_prof"
    t.boolean  "mod_Charisma_prof"
    t.boolean  "skill_acrobatics_prof"
    t.boolean  "skill_animal_handling_prof"
    t.boolean  "skill_arcana_prof"
    t.boolean  "skill_athletics_prof"
    t.boolean  "skill_deception_prof"
    t.boolean  "skill_history_prof"
    t.boolean  "skill_insight_prof"
    t.boolean  "skill_intimidation_prof"
    t.boolean  "skill_investigation_prof"
    t.boolean  "skill_medicine_prof"
    t.boolean  "skill_nature_prof"
    t.boolean  "skill_perception_prof"
    t.boolean  "skill_performance_prof"
    t.boolean  "skill_persuasion_prof"
    t.boolean  "skill_religion_prof"
    t.boolean  "skill_sleight_of_hand_prof"
    t.boolean  "skill_stealth_prof"
    t.boolean  "skill_survival_prof"
  end

  create_table "spells", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "casting_time",  default: "action"
    t.text     "desc"
    t.string   "page"
    t.string   "range"
    t.string   "components"
    t.string   "material"
    t.string   "ritual"
    t.string   "duration"
    t.string   "concentration"
    t.string   "level"
    t.string   "school"
    t.string   "class_names"
    t.text     "higher_level"
    t.string   "archetype"
    t.string   "domains"
    t.string   "oaths"
    t.string   "circles"
    t.string   "patrons"
  end

  create_table "weapons", force: :cascade do |t|
    t.string   "name"
    t.integer  "attack"
    t.string   "damage"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "weapons", ["player_id"], name: "index_weapons_on_player_id"

end
