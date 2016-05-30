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

ActiveRecord::Schema.define(version: 20160522104527) do

  create_table "posts", force: :cascade do |t|
    t.string   "type1_post_p"
    t.string   "type2_post_p"
    t.string   "name_post_p"
    t.string   "location_post_p"
    t.string   "age_post_p"
    t.string   "time1_post_p"
    t.string   "time2_post_p"
    t.string   "time3_post_p"
    t.string   "care_post_p"
    t.string   "type1_post_n"
    t.string   "type2_post_n"
    t.string   "name_post_n"
    t.string   "pic_post_n"
    t.string   "age_post_n"
    t.string   "location_post_n"
    t.string   "time1_post_n"
    t.string   "time2_post_n"
    t.string   "time3_post_n"
    t.string   "intro_post_n"
    t.string   "image_url",       default: ""
    t.integer  "user_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
