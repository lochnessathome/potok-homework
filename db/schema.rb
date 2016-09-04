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

ActiveRecord::Schema.define(version: 20160903121253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lenders", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "loans", force: :cascade do |t|
    t.integer  "lender_id"
    t.decimal  "amount",         precision: 10, scale: 2, null: false
    t.decimal  "normal_rate",    precision: 4,  scale: 4, null: false
    t.decimal  "increased_rate", precision: 4,  scale: 4, null: false
    t.datetime "start_date",                              null: false
    t.datetime "end_date",                                null: false
  end

  add_index "loans", ["lender_id"], name: "index_loans_on_lender_id", using: :btree

  create_table "repayments", force: :cascade do |t|
    t.integer  "loan_id"
    t.decimal  "amount",              precision: 10, scale: 2,                 null: false
    t.boolean  "increased_rate_flag",                          default: false, null: false
    t.datetime "date",                                                         null: false
  end

  add_index "repayments", ["loan_id"], name: "index_repayments_on_loan_id", using: :btree

  add_foreign_key "loans", "lenders"
  add_foreign_key "repayments", "loans"
end
