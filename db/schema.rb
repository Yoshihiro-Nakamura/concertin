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

ActiveRecord::Schema.define(version: 20151022080549) do

  create_table "artist_concerts", force: :cascade do |t|
    t.integer  "artist_id",     limit: 4
    t.integer  "concert_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "instrument_id", limit: 4
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "image_url",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "composers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "image_url",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "concert_contacts", force: :cascade do |t|
    t.integer  "concert_id", limit: 4
    t.integer  "contact_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "concert_songs", force: :cascade do |t|
    t.integer  "concert_id", limit: 4
    t.integer  "song_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "concerts", force: :cascade do |t|
    t.string   "title",         limit: 255
    t.datetime "start_dateime"
    t.time     "open_time"
    t.integer  "hall_id",       limit: 4
    t.integer  "orchestra_id",  limit: 4
    t.integer  "conductor_id",  limit: 4
    t.string   "price",         limit: 255
    t.string   "link_url",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conductors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "image_url",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "phone_number", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "halls", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instruments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "image_url",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orchestras", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "link_url",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.integer  "composer_id", limit: 4
    t.string   "video_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
