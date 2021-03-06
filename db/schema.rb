# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_26_113949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
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

  create_table "enquiries", force: :cascade do |t|
    t.text "tasks"
    t.string "date"
    t.string "address"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "tradeservice_id", null: false
    t.bigint "quote_id", null: false
    t.index ["quote_id"], name: "index_enquiries_on_quote_id"
    t.index ["tradeservice_id"], name: "index_enquiries_on_tradeservice_id"
    t.index ["user_id"], name: "index_enquiries_on_user_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.decimal "price"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "tradeservice_id", null: false
    t.bigint "enquiry_id", null: false
    t.index ["enquiry_id"], name: "index_quotes_on_enquiry_id"
    t.index ["tradeservice_id"], name: "index_quotes_on_tradeservice_id"
    t.index ["user_id"], name: "index_quotes_on_user_id"
  end

  create_table "tradeservices", force: :cascade do |t|
    t.string "name"
    t.string "budget"
    t.string "trade"
    t.text "description"
    t.string "status"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "enquiries", "quotes"
  add_foreign_key "enquiries", "tradeservices"
  add_foreign_key "enquiries", "users"
  add_foreign_key "quotes", "enquiries"
  add_foreign_key "quotes", "tradeservices"
  add_foreign_key "quotes", "users"
end
