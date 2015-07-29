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

ActiveRecord::Schema.define(version: 20150725023700) do

  create_table "project_types", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "tag",  limit: 255
  end

  create_table "projects", force: :cascade do |t|
    t.string  "title",       limit: 255
    t.string  "title_short", limit: 255
    t.string  "proj_date",   limit: 255
    t.string  "tags",        limit: 255
    t.string  "thumb",       limit: 255
    t.string  "toolbox_ids", limit: 255
    t.string  "skills",      limit: 255
    t.integer "rank",        limit: 4
    t.string  "place",       limit: 255
    t.string  "role",        limit: 255
    t.string  "team",        limit: 255
    t.string  "tagline",     limit: 255
    t.text    "description", limit: 65535
    t.string  "github",      limit: 255
    t.string  "website",     limit: 255
    t.string  "report",      limit: 255
  end

  create_table "toolboxes", force: :cascade do |t|
    t.string "name", limit: 255
  end

end
