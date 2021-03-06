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

ActiveRecord::Schema.define(version: 20160712023746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "jurisdiction"
    t.string  "party"
    t.boolean "incumbent"
    t.string  "photo_url"
    t.string  "bioguide_id"
  end

  create_table "issues", force: :cascade do |t|
    t.string  "immigration"
    t.string  "net_neutrality"
    t.string  "climate_change"
    t.string  "gun_control"
    t.string  "intellectual_property"
    t.string  "marijuana"
    t.integer "election_cycle"
    t.integer "candidate_id"
  end

  add_index "issues", ["candidate_id"], name: "index_issues_on_candidate_id", using: :btree

  add_foreign_key "issues", "candidates"
end
