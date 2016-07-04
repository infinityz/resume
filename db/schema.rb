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

ActiveRecord::Schema.define(version: 20160704082526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experience_accomplishments", force: :cascade do |t|
    t.string   "name"
    t.integer  "importance",    limit: 2
    t.integer  "experience_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["experience_id"], name: "index_experience_accomplishments_on_experience_id", using: :btree
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "company_name"
    t.string   "url"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "title"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "expertise_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "importance", limit: 2
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "expertises", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "importance",            limit: 2
    t.integer  "expertise_category_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["expertise_category_id"], name: "index_expertises_on_expertise_category_id", using: :btree
  end

  create_table "links", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "importance", limit: 2
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "icon"
  end

  create_table "profile_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "importance", limit: 2
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
