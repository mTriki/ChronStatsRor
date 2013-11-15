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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131115000127) do

  create_table "championships", :force => true do |t|
    t.string   "name"
    t.integer  "season_id"
    t.integer  "federation_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.string   "adress"
    t.integer  "zip"
    t.string   "city"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "facts", :force => true do |t|
    t.time     "time"
    t.integer  "match_id"
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "federations", :force => true do |t|
    t.string   "name"
    t.string   "logo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gyms", :force => true do |t|
    t.string   "name"
    t.string   "adress"
    t.integer  "zip"
    t.integer  "city"
    t.integer  "federation_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "matches", :force => true do |t|
    t.datetime "date"
    t.integer  "home_score"
    t.integer  "host_score"
    t.integer  "championship_id"
    t.integer  "gym_id"
    t.integer  "team1_id"
    t.integer  "team2_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "name"
    t.string   "firstname"
    t.string   "login"
    t.string   "phone"
    t.string   "email"
    t.string   "password"
    t.integer  "federation_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "seasons", :force => true do |t|
    t.string   "name"
    t.date     "begin"
    t.date     "end"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "home_color"
    t.string   "away_color"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "id_club"
  end

  create_table "users", :force => true do |t|
    t.string   "nom"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
