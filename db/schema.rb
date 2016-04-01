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

ActiveRecord::Schema.define(version: 20160323230737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  add_index "admins", ["uid", "provider"], name: "index_admins_on_uid_and_provider", unique: true, using: :btree

  create_table "color_sets", force: :cascade do |t|
    t.string   "background"
    t.string   "button"
    t.string   "circle"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "color_sets", ["project_id"], name: "index_color_sets_on_project_id", using: :btree

  create_table "devices", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices_projects", force: :cascade do |t|
    t.integer "device_id"
    t.integer "project_id"
  end

  add_index "devices_projects", ["device_id"], name: "index_devices_projects_on_device_id", using: :btree
  add_index "devices_projects", ["project_id"], name: "index_devices_projects_on_project_id", using: :btree

  create_table "languages", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages_projects", force: :cascade do |t|
    t.integer "project_id"
    t.integer "language_id"
  end

  add_index "languages_projects", ["language_id"], name: "index_languages_projects_on_language_id", using: :btree
  add_index "languages_projects", ["project_id"], name: "index_languages_projects_on_project_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "github_page_url"
    t.string   "web_page_url"
    t.string   "title"
    t.text     "body"
    t.string   "description"
    t.date     "date_deployed"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.json     "carousel_images"
  end

  add_foreign_key "devices_projects", "devices"
  add_foreign_key "devices_projects", "projects"
  add_foreign_key "languages_projects", "languages"
  add_foreign_key "languages_projects", "projects"
end
