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

ActiveRecord::Schema.define(version: 2020_06_20_201139) do

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

  create_table "cita", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.integer "local_id"
    t.date "fecha"
    t.time "hora"
    t.boolean "accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dueno_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "rut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_dueno_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_dueno_users_on_reset_password_token", unique: true
  end

  create_table "likes", force: :cascade do |t|
    t.integer "sender_user"
    t.integer "receiver_user"
    t.boolean "match"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.integer "tipo"
    t.integer "n_citas", default: 0
    t.bigint "dueno_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dueno_user_id"], name: "index_locals_on_dueno_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "review"
    t.integer "rating"
    t.bigint "user_id"
    t.bigint "local_id"
    t.bigint "cita_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cita_id"], name: "index_reviews_on_cita_id"
    t.index ["local_id"], name: "index_reviews_on_local_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "rut"
    t.string "name"
    t.integer "gender"
    t.integer "region"
    t.string "birthday"
    t.integer "number"
    t.text "description"
    t.integer "sexual_orientation"
    t.integer "interests"
    t.boolean "admin", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "locals", "dueno_users"
  add_foreign_key "reviews", "cita", column: "cita_id"
  add_foreign_key "reviews", "locals"
  add_foreign_key "reviews", "users"
end
