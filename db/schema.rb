# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_27_152354) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "email_logs", force: :cascade do |t|
    t.string "type"
    t.datetime "sent_at"
    t.string "record_type"
    t.bigint "record_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exit_requests", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string "txn_hash"
    t.string "validator_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["validator_id"], name: "index_transactions_on_validator_id"
  end

  create_table "validators", primary_key: "pubkey", id: :string, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "exit_request_id"
    t.string "status"
    t.index ["exit_request_id"], name: "index_validators_on_exit_request_id"
  end

  add_foreign_key "transactions", "validators", primary_key: "pubkey"
  add_foreign_key "validators", "exit_requests"
end
