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

ActiveRecord::Schema.define(version: 20150906173216) do

  create_table "delivery_service_provider_invoices", force: :cascade do |t|
    t.integer  "delivery_service_provider_id"
    t.integer  "order_id"
    t.string   "invoice_number"
    t.datetime "invoice_date"
    t.float    "invoice_amount"
    t.string   "status"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "delivery_service_providers", force: :cascade do |t|
    t.string   "name"
    t.integer  "contact"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "general_revenue_ledger_entries", force: :cascade do |t|
    t.integer  "product_line_id"
    t.integer  "product_id"
    t.float    "debit_amount"
    t.float    "credit_amount"
    t.string   "entreable_type"
    t.integer  "entreable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "imageable_type"
    t.integer  "imageable_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "shopping_cart_id"
    t.integer  "variant_id"
    t.float    "cost_price"
    t.integer  "quantity"
    t.float    "total"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "order_cancel_request_lines", force: :cascade do |t|
    t.integer  "line_item_id"
    t.integer  "order_cancel_request_id"
    t.string   "state"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.float    "cancel_amount"
  end

  create_table "order_cancel_requests", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "customer_id"
    t.string   "state"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.float    "total_cancel_amount"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "number"
    t.float    "item_total"
    t.float    "delivery_total"
    t.float    "net_total"
    t.integer  "item_count"
    t.integer  "billing_address_id"
    t.integer  "shipping_address_id"
    t.string   "state"
    t.datetime "placed_at"
    t.datetime "shipped_at"
    t.datetime "delivered_at"
    t.datetime "cancel_requested_at"
    t.datetime "cancel_approved_at"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "delivery_service_provider_id"
    t.integer  "customer_id"
  end

  create_table "product_lines", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "deleted_at"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.string   "number"
    t.integer  "address_id"
    t.string   "state"
    t.integer  "order_id"
    t.integer  "delivery_service_provider_id"
    t.float    "delivery_cost"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "current_order_id"
    t.string   "state"
    t.datetime "last_used_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.string   "domain"
    t.string   "url"
    t.string   "default_currency"
    t.string   "default_language"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_addresses", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "zipcode"
    t.integer  "contact_number"
    t.string   "type"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.text     "encrypted_password"
    t.text     "password_salt"
    t.string   "remember_token"
    t.string   "reset_password_token"
    t.string   "perishable_token"
    t.integer  "sign_in_count"
    t.integer  "failed_attempts"
    t.datetime "last_request_at"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "deleted_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "remember_created_at"
    t.string   "authentication_token"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "variants", force: :cascade do |t|
    t.string   "sku"
    t.float    "cost_price"
    t.datetime "deleted_at"
    t.text     "variant_attributes"
    t.integer  "product_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
