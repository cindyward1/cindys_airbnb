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

ActiveRecord::Schema.define(version: 20140929183854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.string   "comment_text"
    t.integer  "rating"
    t.integer  "opinions_about_id"
    t.string   "opinions_about_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rentals", force: true do |t|
    t.integer  "user_id"
    t.string   "rental_type"
    t.string   "city"
    t.string   "state"
    t.integer  "number_bedrooms"
    t.integer  "number_beds"
    t.integer  "number_bathrooms"
    t.integer  "max_number_guests"
    t.float    "base_rate"
    t.float    "extra_guest_rate"
    t.integer  "minimum_days_stay"
    t.float    "rating"
    t.integer  "number_ratings"
    t.string   "description"
    t.string   "the_photo_file_name"
    t.string   "the_photo_content_type"
    t.integer  "the_photo_file_size"
    t.datetime "the_photo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "has_photo",              default: false
  end

  create_table "reservations", force: true do |t|
    t.integer  "user_id"
    t.integer  "rental_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "number_guests"
    t.float    "reservation_total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "type",                   default: "Renter", null: false
    t.string   "username",               default: "",       null: false
    t.date     "date_joined"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.float    "rating"
    t.integer  "number_ratings"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
