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

ActiveRecord::Schema.define(version: 20151110045428) do

  create_table "client_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "short_name",      limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "address",         limit: 255
    t.string   "office_contact",  limit: 255
    t.string   "phone",           limit: 255
    t.string   "fax",             limit: 255
    t.string   "delivery_method", limit: 255
    t.text     "notes",           limit: 65535
    t.integer  "clienttype_id",   limit: 4
  end

  add_index "clients", ["clienttype_id"], name: "index_clients_on_clienttype_id", using: :btree

  create_table "intake_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "intakes", force: :cascade do |t|
    t.date     "rcvd_date"
    t.date     "post_date"
    t.integer  "pgs",           limit: 4
    t.date     "scan_date"
    t.text     "notes",         limit: 65535
    t.date     "service_date"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "client_id",     limit: 4
    t.integer  "intaketype_id", limit: 4
  end

  add_index "intakes", ["client_id"], name: "index_intakes_on_client_id", using: :btree
  add_index "intakes", ["intaketype_id"], name: "index_intakes_on_intaketype_id", using: :btree

end
