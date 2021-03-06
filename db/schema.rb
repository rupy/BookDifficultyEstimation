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

ActiveRecord::Schema.define(version: 20140627161328) do

  create_table "books", force: true do |t|
    t.text    "title"
    t.text    "asin"
    t.integer "node_id"
    t.text    "browsenode"
    t.text    "author"
    t.text    "manufacturer"
    t.text    "url"
    t.integer "amount"
    t.text    "contents"
    t.text    "pre_processed_contents"
    t.integer "difficulty"
    t.text    "image_url"
    t.integer "image_height"
    t.integer "image_width"
  end

  create_table "books_back", force: true do |t|
    t.text     "title"
    t.text     "asin"
    t.integer  "node_id"
    t.text     "browsenode"
    t.text     "author"
    t.text     "manufacture"
    t.text     "url"
    t.integer  "amount"
    t.text     "contents"
    t.text     "pre_processed_contents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
