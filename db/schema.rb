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

<<<<<<< a8b6c16fcc6f824a684840aedbf66d57aea19196
ActiveRecord::Schema.define(version: 20161006225750) do
=======
ActiveRecord::Schema.define(version: 20161008122006) do
>>>>>>> add 12 factor

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clicks", force: :cascade do |t|
    t.json     "data"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: :cascade do |t|
    t.integer  "uid"
    t.string   "name",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "subdomain",       limit: 255
    t.string   "domain",          limit: 255
    t.string   "document_root"
    t.boolean  "render_markdown"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",     limit: 255
    t.integer  "uid"
    t.string   "name",         limit: 255
    t.string   "email",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "access_token", limit: 255
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  limit: 255, null: false
    t.integer  "item_id",                null: false
    t.string   "event",      limit: 255, null: false
    t.string   "whodunnit",  limit: 255
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

end
