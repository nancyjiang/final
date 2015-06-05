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

ActiveRecord::Schema.define(version: 20150602052223) do

  create_table "hashtag_photos", force: true do |t|
    t.integer "photo_id"
    t.integer "hashtag_id"
  end

  add_index "hashtag_photos", ["hashtag_id"], name: "index_hashtag_photos_on_hashtag_id"
  add_index "hashtag_photos", ["photo_id"], name: "index_hashtag_photos_on_photo_id"

  create_table "hashtags", force: true do |t|
    t.string "name"
  end

  create_table "likes", force: true do |t|
    t.integer "photo_id"
    t.integer "user_id"
  end

  add_index "likes", ["photo_id"], name: "index_likes_on_photo_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "photos", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "uploaded_at"
  end

  add_index "photos", ["user_id"], name: "index_photos_on_user_id"

  create_table "users", force: true do |t|
    t.string "name"
    t.string "email"
    t.string "location"
    t.string "password_digest"
  end

end
