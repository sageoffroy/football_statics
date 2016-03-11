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

ActiveRecord::Schema.define(version: 20160310210350) do

  create_table "coaches", force: :cascade do |t|
    t.integer  "person_id"
    t.date     "debut_coach"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "coaches", ["person_id"], name: "index_coaches_on_person_id"

  create_table "competition_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "competitions", force: :cascade do |t|
    t.integer  "competition_type_id"
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "competitions", ["competition_type_id"], name: "index_competitions_on_competition_type_id"

  create_table "dominant_foots", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "matches", force: :cascade do |t|
    t.date     "play_date"
    t.integer  "team_1_id"
    t.integer  "team_2_id"
    t.integer  "season_of_competition_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "matches", ["season_of_competition_id"], name: "index_matches_on_season_of_competition_id"

  create_table "nationalities", force: :cascade do |t|
    t.string   "name"
    t.string   "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "picture"
    t.date     "birth_date"
    t.integer  "weight"
    t.integer  "height"
    t.integer  "nationality_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "people", ["nationality_id"], name: "index_people_on_nationality_id"

  create_table "player_of_team_matches", force: :cascade do |t|
    t.integer  "player_of_team_id"
    t.integer  "match_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "player_of_team_matches", ["match_id"], name: "index_player_of_team_matches_on_match_id"
  add_index "player_of_team_matches", ["player_of_team_id"], name: "index_player_of_team_matches_on_player_of_team_id"

  create_table "player_of_teams", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.date     "contract_start"
    t.date     "contract_end"
    t.integer  "shirt_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "player_of_teams", ["player_id"], name: "index_player_of_teams_on_player_id"
  add_index "player_of_teams", ["team_id"], name: "index_player_of_teams_on_team_id"

  create_table "players", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "dominant_foot_id"
    t.date     "debut_player"
    t.text     "position"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "players", ["dominant_foot_id"], name: "index_players_on_dominant_foot_id"
  add_index "players", ["person_id"], name: "index_players_on_person_id"

  create_table "season_of_competitions", force: :cascade do |t|
    t.integer  "season_id"
    t.integer  "competition_id"
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "season_of_competitions", ["competition_id"], name: "index_season_of_competitions_on_competition_id"
  add_index "season_of_competitions", ["season_id"], name: "index_season_of_competitions_on_season_id"

  create_table "seasons", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stadia", force: :cascade do |t|
    t.string   "name"
    t.string   "nickname"
    t.date     "foundation"
    t.integer  "capacity"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stat_of_player_of_team_of_matches", force: :cascade do |t|
    t.integer  "player_of_team_of_match_id"
    t.integer  "stat_id"
    t.integer  "value"
    t.time     "time"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "stats", force: :cascade do |t|
    t.string   "description"
    t.string   "binding_key"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "initials"
    t.date     "foundation"
    t.integer  "members"
    t.integer  "stadium_id"
    t.string   "shield"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "colours1"
    t.string   "colours2"
    t.string   "nickname"
  end

  add_index "teams", ["stadium_id"], name: "index_teams_on_stadium_id"

end
