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

ActiveRecord::Schema.define(version: 20150924223356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_cases", force: true do |t|
    t.string   "name",          null: false
    t.string   "email_address", null: false
    t.text     "message",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  create_table "portfolio_items", force: true do |t|
    t.integer  "portfolio_id"
    t.string   "name",                                                         null: false
    t.text     "about",        default: "No description was added. Dear God!"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolios", force: true do |t|
    t.string   "name",       null: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_pictures", force: true do |t|
    t.integer  "project_id",                          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "is_primary",          default: false
  end

  add_index "project_pictures", ["project_id"], name: "index_project_pictures_on_project_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "title"
    t.string   "url_title"
    t.string   "short_description"
    t.text     "long_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["url_title"], name: "index_projects_on_url_title", using: :btree

  create_table "roles", force: true do |t|
    t.string  "name"
    t.boolean "can_post",              default: true
    t.boolean "can_comment",           default: true
    t.boolean "can_moderate",          default: false
    t.boolean "can_change_own_status", default: true
  end

  create_table "statuses", force: true do |t|
    t.integer  "user_id"
    t.string   "heading",    null: false
    t.text     "message",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "statuses", ["heading"], name: "index_statuses_on_heading", using: :btree

  create_table "users", force: true do |t|
    t.string   "nickname"
    t.boolean  "hireable",   default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
