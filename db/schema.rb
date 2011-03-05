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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101119152655) do

  create_table "aditions", :force => true do |t|
    t.string   "vname",      :null => false
    t.string   "email",      :null => false
    t.string   "homepage"
    t.text     "comment",    :null => false
    t.integer  "artical_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articals", :force => true do |t|
    t.string    "title"
    t.text      "content"
    t.integer   "category_id"
    t.boolean   "top_token",   :default => false
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string    "title"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.text      "content"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "images", :force => true do |t|
    t.string    "url"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string    "login",                                         :null => false
    t.string    "email",                                         :null => false
    t.string    "crypted_password",                              :null => false
    t.string    "password_salt",                                 :null => false
    t.string    "persistence_token",                             :null => false
    t.string    "micropost",         :default => "Good Luck!"
    t.string    "broadcast",         :default => "V1.0"
    t.text      "aboutme",           :default => "Please edit!"
    t.string    "twitter",           :default => "Edit it"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

end
