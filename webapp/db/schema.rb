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

ActiveRecord::Schema.define(version: 20170522085843) do

  create_table "ctds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "amount"
    t.bigint "sender_id"
    t.bigint "recipient_id"
    t.text "document"
    t.datetime "transfer_timestamp"
    t.string "folio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.index ["recipient_id"], name: "index_ctds_on_recipient_id"
    t.index ["sender_id"], name: "index_ctds_on_sender_id"
  end

  create_table "taxpayers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "rut"
    t.string "business_name"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
