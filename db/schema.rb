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

ActiveRecord::Schema.define(version: 2016_09_16_212210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_id", null: false
    t.string "resource_type", null: false
    t.integer "author_id"
    t.string "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_admins_on_email"
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_admins_on_uid_and_provider", unique: true
  end

  create_table "bios", force: :cascade do |t|
    t.text "body"
    t.string "email"
    t.string "resume"
    t.string "phone_number"
    t.string "name"
    t.string "background_image"
    t.string "profile_picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "color_sets", force: :cascade do |t|
    t.string "background"
    t.string "button"
    t.string "circle"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "logo_background"
    t.string "logo_title"
    t.string "button_text"
    t.string "button_hover"
    t.string "text"
    t.index ["project_id"], name: "index_color_sets_on_project_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "featured"
  end

  create_table "devices_projects", force: :cascade do |t|
    t.integer "device_id"
    t.integer "project_id"
    t.index ["device_id"], name: "index_devices_projects_on_device_id"
    t.index ["project_id"], name: "index_devices_projects_on_project_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages_projects", force: :cascade do |t|
    t.integer "project_id"
    t.integer "language_id"
    t.index ["language_id"], name: "index_languages_projects_on_language_id"
    t.index ["project_id"], name: "index_languages_projects_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "github_page_url"
    t.string "web_page_url"
    t.string "title"
    t.string "description"
    t.date "date_deployed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "featured"
    t.text "opening_body"
    t.text "closing_body"
    t.string "header_image"
    t.string "logo"
  end

  create_table "screenshots", force: :cascade do |t|
    t.text "caption"
    t.integer "device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["device_id"], name: "index_screenshots_on_device_id"
  end

  create_table "social_links", force: :cascade do |t|
    t.string "site"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "devices_projects", "devices"
  add_foreign_key "devices_projects", "projects"
  add_foreign_key "languages_projects", "languages"
  add_foreign_key "languages_projects", "projects"
end
