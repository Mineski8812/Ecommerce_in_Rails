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

ActiveRecord::Schema.define(version: 2022_01_15_144618) do

  create_table "orders", force: :cascade do |t|
    t.string "Description"
    t.integer "Amount"
    t.integer "client_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "products_id", null: false
    t.integer "user_id", null: false
    t.index ["products_id"], name: "index_orders_on_products_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "Name"
    t.datetime "EndingDate"
    t.string "Description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "stock_id", default: 1, null: false
    t.integer "created_by", default: 0, null: false
    t.integer "cant"
    t.index ["stock_id"], name: "index_products_on_stock_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "Name"
    t.string "Address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "created_by", default: 0, null: false
  end

  create_table "stock_shops", force: :cascade do |t|
    t.string "Name"
    t.string "Description"
    t.integer "Shop_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string "Name"
    t.string "Description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "shop_id", default: 1, null: false
    t.integer "created_by", default: 0, null: false
    t.index ["shop_id"], name: "index_stocks_on_shop_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "orders", "products", column: "products_id"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "stocks"
  add_foreign_key "stocks", "shops"
end
