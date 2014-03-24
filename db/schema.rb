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

ActiveRecord::Schema.define(version: 20140324133111) do

  create_table "banners", force: true do |t|
    t.text     "title"
    t.string   "back_image_file_name"
    t.string   "back_image_content_type"
    t.integer  "back_image_file_size"
    t.datetime "back_image_updated_at"
    t.text     "description"
    t.string   "ulr_to_content"
    t.integer  "index_sorting"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cackle_comments", id: false, force: true do |t|
    t.integer  "comment_id"
    t.integer  "parent_id"
    t.string   "post_id"
    t.string   "url"
    t.string   "title"
    t.text     "message"
    t.string   "status"
    t.string   "ip"
    t.string   "author_name"
    t.string   "author_email"
    t.string   "author_avatar"
    t.string   "author_www"
    t.string   "author_provider"
    t.string   "anonym_name"
    t.string   "anonym_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "call_orders", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "time_from"
    t.datetime "time_to"
    t.text     "message"
  end

  create_table "certificates", force: true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "alt"
    t.string   "title"
    t.integer  "index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characteristic", force: true do |t|
    t.integer  "door_id"
    t.text     "operation"
    t.text     "specifications"
    t.text     "warranty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "colory_dverejs", force: true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "dveri_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_forms", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "door_color", force: true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "door_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doors", force: true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "description"
    t.string   "url"
    t.integer  "product_model_id"
    t.text     "meta_title"
    t.text     "meta_description"
    t.text     "meta_keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dveris", force: true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "description"
    t.string   "url"
    t.integer  "product_model_id"
    t.text     "meta_title"
    t.text     "meta_description"
    t.text     "meta_keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedback_emails", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "harakterystykies", force: true do |t|
    t.integer  "dveri_id"
    t.text     "operation"
    t.text     "specifications"
    t.text     "warranty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "main_banners", force: true do |t|
    t.text     "title"
    t.string   "back_image_file_name"
    t.string   "back_image_content_type"
    t.integer  "back_image_file_size"
    t.datetime "back_image_updated_at"
    t.text     "description"
    t.string   "ulr_to_content"
    t.integer  "index_sorting"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mdfs", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_door_louvers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "time_from"
    t.datetime "time_to"
    t.text     "message"
    t.string   "color"
    t.string   "width"
    t.string   "height"
    t.string   "count"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_enter_doors", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "time_from"
    t.datetime "time_to"
    t.text     "message"
    t.string   "model"
    t.string   "color"
    t.string   "count"
    t.string   "side_opening"
    t.string   "furniture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_models", force: true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promotions", force: true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_on_main_page_file_name"
    t.string   "image_on_main_page_content_type"
    t.integer  "image_on_main_page_file_size"
    t.datetime "image_on_main_page_updated_at"
    t.text     "short_description"
    t.text     "description"
    t.datetime "begin_promo"
    t.datetime "end_promo"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", force: true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "short_description"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "views", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true

end
