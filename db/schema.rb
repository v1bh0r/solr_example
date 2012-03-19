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

ActiveRecord::Schema.define(:version => 20120318170926) do

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "address"
    t.string   "phone_number"
    t.string   "alt_phone_numbers"
    t.date     "date_of_birth"
    t.string   "functional_area"
    t.string   "specialization"
    t.string   "industry"
    t.string   "resume_title"
    t.text     "key_skills"
    t.string   "work_experience"
    t.string   "current_employer"
    t.string   "previous_employer"
    t.string   "current_salary"
    t.string   "seniority_level"
    t.string   "location"
    t.string   "preferred_locations"
    t.string   "education"
    t.string   "education_spl"
    t.string   "education2"
    t.string   "education2_spl"
    t.date     "last_activity_on"
    t.string   "gender"
    t.string   "resume_location"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
