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

ActiveRecord::Schema.define(version: 20160314002741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.string   "background"
    t.string   "button"
    t.string   "circle"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "colors", ["project_id"], name: "index_colors_on_project_id", using: :btree

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
