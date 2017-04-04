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

ActiveRecord::Schema.define(version: 20170404020647) do

  create_table "callcenter_files", force: :cascade do |t|
    t.string   "file_name"
    t.string   "uketsuke_id"
    t.string   "uketsuke_kubun"
    t.string   "yoyaku_kubun"
    t.string   "nyudenbi"
    t.string   "nyuden_jikoku"
    t.string   "uketsuke_sha"
    t.string   "kibou_iin"
    t.string   "baitaimei"
    t.string   "baitai_shousai"
    t.string   "shoshin_yoyakubi"
    t.string   "shoshin_yoyakujikoku"
    t.string   "raiinshamei_kana"
    t.string   "raiinshamei_kanji"
    t.string   "raiinsha_seibetsu"
    t.string   "raiinsya_yubinbangou"
    t.string   "raiinsha_jusyo"
    t.string   "raiinsha_denwa"
    t.string   "tokki_jikou"
    t.string   "call_kekka"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string   "abb_name"
    t.string   "name"
    t.string   "hosho_name"
    t.string   "hd_name"
    t.string   "zip_code"
    t.string   "address"
    t.string   "tel"
    t.string   "fax"
    t.string   "email"
    t.string   "remarks"
    t.string   "licence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "laboratories", force: :cascade do |t|
    t.string   "name"
    t.string   "hd_name"
    t.string   "zip_code"
    t.string   "address"
    t.string   "tel"
    t.string   "fax"
    t.string   "email"
    t.string   "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
