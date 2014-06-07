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

ActiveRecord::Schema.define(version: 20140607225059) do

  create_table "dresses", force: true do |t|
    t.integer "dress_id"
    t.string  "dress_name"
    t.integer "dress_price"
    t.text    "dress_image"
  end

  create_table "dressfabrics", force: true do |t|
    t.integer "dress_id"
    t.integer "fabric_id"
  end

  create_table "fabrics", force: true do |t|
    t.integer "fabric_id"
    t.string  "fabric_name"
    t.string  "fabric_color"
    t.text    "fabric_image"
  end

  create_table "reviews", force: true do |t|
    t.integer "dress_id"
    t.integer "review_rating"
    t.text    "review"
  end

end
