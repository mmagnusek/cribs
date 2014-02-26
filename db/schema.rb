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

ActiveRecord::Schema.define(version: 20140226014543) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eshop_products", force: true do |t|
    t.integer  "product_id"
    t.integer  "color_id"
    t.integer  "size_id"
    t.integer  "stock"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "eshop_product_id"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "specification"
    t.string   "material"
    t.integer  "category_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "table_id"
  end

  create_table "sizes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tables", force: true do |t|
    t.string "name"
    t.string "a_uni"
    t.string "a_xs"
    t.string "a_s"
    t.string "a_m"
    t.string "a_l"
    t.string "a_xl"
    t.string "a_xxl"
    t.string "b_uni"
    t.string "b_xs"
    t.string "b_s"
    t.string "b_m"
    t.string "b_l"
    t.string "b_xl"
    t.string "b_xxl"
    t.string "c_uni"
    t.string "c_xs"
    t.string "c_s"
    t.string "c_m"
    t.string "c_l"
    t.string "c_xl"
    t.string "c_xxl"
    t.string "d_uni"
    t.string "d_xs"
    t.string "d_s"
    t.string "d_m"
    t.string "d_l"
    t.string "d_xl"
    t.string "d_xxl"
    t.string "e_uni"
    t.string "e_xs"
    t.string "e_s"
    t.string "e_m"
    t.string "e_l"
    t.string "e_xl"
    t.string "e_xxl"
  end

end
