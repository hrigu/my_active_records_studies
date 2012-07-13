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

ActiveRecord::Schema.define(:version => 20120713174441) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.integer  "hours_per_week"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "clients_users", :id => false, :force => true do |t|
    t.integer "client_id"
    t.integer "user_id"
  end

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.string   "rgb"
    t.integer  "sort_order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "service_types", :force => true do |t|
    t.integer  "color_id"
    t.datetime "time_from"
    t.datetime "time_to"
    t.datetime "duration"
    t.boolean  "is_personal"
    t.boolean  "is_holiday"
    t.integer  "sort_order"
    t.boolean  "is_active"
    t.string   "explanation"
    t.text     "note"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "services", :force => true do |t|
    t.datetime "date_time_from"
    t.datetime "date_tyime_to"
    t.string   "error_text"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "staff_id"
    t.integer  "service_type_id"
  end

  create_table "staffs", :force => true do |t|
    t.integer  "client_id"
    t.string   "abbreviation"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :limit => 45
    t.string   "password",               :limit => 40
    t.string   "salt",                   :limit => 40
    t.boolean  "is_internal_super_user"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

end
