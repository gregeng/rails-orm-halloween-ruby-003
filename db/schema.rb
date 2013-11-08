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

ActiveRecord::Schema.define(version: 20131108182120) do

  create_table "bucket_candies", force: true do |t|
    t.integer  "bucket_id"
    t.integer  "candy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bucket_candies", ["bucket_id"], name: "index_bucket_candies_on_bucket_id"
  add_index "bucket_candies", ["candy_id"], name: "index_bucket_candies_on_candy_id"

  create_table "buckets", force: true do |t|
    t.integer  "kid_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "buckets", ["kid_id"], name: "index_buckets_on_kid_id"

  create_table "candies", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "house_candies", force: true do |t|
    t.integer  "candy_id"
    t.integer  "house_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "house_candies", ["candy_id"], name: "index_house_candies_on_candy_id"
  add_index "house_candies", ["house_id"], name: "index_house_candies_on_house_id"

  create_table "houses", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "kids", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
