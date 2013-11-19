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

ActiveRecord::Schema.define(version: 20131119194036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meetings", force: true do |t|
    t.date     "date"
    t.integer  "duration_mins"
    t.string   "location"
    t.string   "time_block"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "start_time"
    t.integer  "end_time"
    t.integer  "user_id"
    t.integer  "mentor_id"
  end

  create_table "mentors", force: true do |t|
    t.string   "name"
    t.string   "info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.integer  "monday_available_from"
    t.integer  "monday_available_to"
    t.integer  "tuesday_available_from"
    t.integer  "tuesday_available_to"
    t.integer  "wednesday_available_from"
    t.integer  "wednesday_available_to"
    t.integer  "thursday_available_from"
    t.integer  "thursday_available_to"
    t.integer  "friday_available_from"
    t.integer  "friday_available_to"
    t.integer  "saturday_available_from"
    t.integer  "saturday_available_to"
    t.integer  "sunday_available_from"
    t.integer  "sunday_available_to"
  end

  create_table "skills", force: true do |t|
    t.string   "skill"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

end
