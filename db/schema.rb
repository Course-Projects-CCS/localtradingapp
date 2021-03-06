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

ActiveRecord::Schema.define(version: 2020_05_11_144742) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "buy_post_details", force: :cascade do |t|
    t.integer "post_id"
    t.integer "field_id"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_buy_post_details_on_field_id"
    t.index ["post_id"], name: "index_buy_post_details_on_post_id"
  end

  create_table "buy_posts", force: :cascade do |t|
    t.string "title"
    t.string "user_id"
    t.string "category"
    t.text "content"
    t.decimal "price_low"
    t.decimal "price_high"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "latitude"
    t.decimal "longitude"
  end

  create_table "sell_post_details", force: :cascade do |t|
    t.integer "post_id"
    t.integer "field_id"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_sell_post_details_on_field_id"
    t.index ["post_id"], name: "index_sell_post_details_on_post_id"
  end

  create_table "sell_posts", force: :cascade do |t|
    t.string "title"
    t.string "user_id"
    t.string "category"
    t.text "content"
    t.decimal "price"
    t.boolean "bargain_allowed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "upload"
    t.decimal "latitude"
    t.decimal "longitude"
  end

  create_table "templates", force: :cascade do |t|
    t.string "post_type"
    t.string "category"
    t.string "column_id"
    t.string "column_name"
    t.string "datatype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "payer_id"
    t.integer "payee_id"
    t.integer "buy_post_id"
    t.integer "sell_post_id"
    t.string "post_type"
    t.decimal "amount"
    t.string "payment_type"
    t.string "card_number"
    t.string "card_holder"
    t.string "expiration_date"
    t.string "cvv"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buy_post_id"], name: "index_transactions_on_buy_post_id"
    t.index ["payee_id"], name: "index_transactions_on_payee_id"
    t.index ["payer_id"], name: "index_transactions_on_payer_id"
    t.index ["sell_post_id"], name: "index_transactions_on_sell_post_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 40
    t.string "password", limit: 512
    t.string "first_name"
    t.string "last_name"
    t.datetime "last_updated"
    t.integer "active_posts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
