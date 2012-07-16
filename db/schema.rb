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

ActiveRecord::Schema.define(:version => 20120716141920) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

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
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
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
