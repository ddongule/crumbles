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

ActiveRecord::Schema.define(version: 20180816071306) do

  create_table "bakeries", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "telephone_number"
    t.string "business_license"
    t.string "emaile"
    t.time "open_time"
    t.time "close_time"
    t.integer "seat"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "breads", force: :cascade do |t|
    t.string "bakery_name"
    t.string "bread_name"
    t.string "category"
    t.integer "amount"
    t.integer "bookable_num"
    t.integer "price"
    t.integer "bakery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bakery_id"], name: "index_breads_on_bakery_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "user"
    t.text "content"
    t.integer "starPoint"
    t.string "img"
    t.integer "bread_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bread_id"], name: "index_reviews_on_bread_id"
  end

end
