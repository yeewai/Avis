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

ActiveRecord::Schema.define(:version => 20130102192709) do

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.text     "content"
    t.integer  "place_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "place_type"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.boolean  "hide"
    t.integer  "project_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "status"
    t.text     "description"
    t.integer  "user_id"
  end

  create_table "media", :force => true do |t|
    t.boolean  "hide"
    t.string   "media_file_name"
    t.string   "media_content_type"
    t.integer  "media_file_size"
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "projects", :force => true do |t|
    t.text     "name"
    t.text     "description"
    t.integer  "status"
    t.string   "variety"
    t.integer  "parent_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "statuses", :force => true do |t|
    t.integer  "user_id"
    t.text     "past"
    t.text     "future"
    t.boolean  "hiatus"
    t.datetime "start_late_notice"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "task"
    t.integer  "state"
    t.integer  "kind"
    t.integer  "owner_id"
    t.integer  "project_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.text     "description"
    t.string   "project_type"
    t.integer  "user_id",      :limit => 255
  end

  create_table "users", :force => true do |t|
    t.text     "username"
    t.integer  "role"
    t.text     "email"
    t.boolean  "notify"
    t.integer  "gmt"
    t.text     "name"
    t.date     "birthday"
    t.text     "zodiac"
    t.text     "residence"
    t.text     "colour"
    t.text     "position"
    t.text     "website"
    t.text     "bio"
    t.text     "quote"
    t.text     "contact"
    t.integer  "theme"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "password_digest"
    t.string   "token"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.integer  "user_id"
    t.datetime "last_online"
    t.string   "last_online_at"
  end

end
