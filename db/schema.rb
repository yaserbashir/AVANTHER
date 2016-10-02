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

ActiveRecord::Schema.define(version: 20161001191548) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_comments_on_product_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.string   "favoritable_type"
    t.integer  "favoritable_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["favoritable_id", "favoritable_type"], name: "index_favorites_on_favoritable_id_and_favoritable_type"
    t.index ["favoritable_type", "favoritable_id"], name: "index_favorites_on_favoritable_type_and_favoritable_id"
    t.index ["product_id"], name: "index_favorites_on_product_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "notified_by_id"
    t.integer  "product_id"
    t.integer  "identifier"
    t.string   "notice_type"
    t.boolean  "read",           default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["notified_by_id"], name: "index_notifications_on_notified_by_id"
    t.index ["product_id"], name: "index_notifications_on_product_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "designer"
    t.integer  "size"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "image"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.string   "favoritable_type"
    t.integer  "favoritable_id"
    t.index ["favoritable_type", "favoritable_id"], name: "index_products_on_favoritable_type_and_favoritable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
  end

end
