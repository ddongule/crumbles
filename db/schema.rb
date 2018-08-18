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

ActiveRecord::Schema.define(version: 20180818045041) do

  create_table "bakeries", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "telephone_number"
    t.string "business_license"
    t.string "email"
    t.time "open_time"
    t.time "close_time"
    t.integer "seat"
    t.string "img"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_bakeries_on_owner_id"
  end

  create_table "breads", force: :cascade do |t|
    t.string "bakery_name"
    t.string "bread_name"
    t.string "category"
    t.integer "amount"
    t.integer "bookable_num"
    t.integer "price"
    t.float "star_point"
    t.integer "bakery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bakery_id"], name: "index_breads_on_bakery_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true
  end

  create_table "owners_roles", id: false, force: :cascade do |t|
    t.integer "owner_id"
    t.integer "role_id"
    t.index ["owner_id", "role_id"], name: "index_owners_roles_on_owner_id_and_role_id"
    t.index ["owner_id"], name: "index_owners_roles_on_owner_id"
    t.index ["role_id"], name: "index_owners_roles_on_role_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "bread_name"
    t.string "user_name"
    t.string "user_email"
    t.text "content"
    t.integer "star_point"
    t.string "image"
    t.integer "bread_id"
    t.integer "user_id"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bread_id"], name: "index_reviews_on_bread_id"
    t.index ["owner_id"], name: "index_reviews_on_owner_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
