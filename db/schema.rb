# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100727203616) do

  create_table "constraints", :force => true do |t|
    t.string   "restriction"
    t.integer  "list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feed_items", :force => true do |t|
    t.datetime "date"
    t.string   "title"
    t.text     "description"
    t.string   "creator"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feed_sources", :force => true do |t|
    t.string   "link"
    t.string   "name"
    t.string   "ico"
    t.datetime "last_updated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feed_sources_users", :id => false, :force => true do |t|
    t.integer "feed_source_id"
    t.integer "user_id"
  end

  create_table "interactions", :force => true do |t|
    t.integer  "feed_item_id"
    t.integer  "user_id"
    t.boolean  "read",         :default => false
    t.boolean  "starred",      :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists_feed_sources", :id => false, :force => true do |t|
    t.integer "feed_source_id"
    t.integer "list_id"
  end

  create_table "subscriptions", :force => true do |t|
    t.integer  "list_id"
    t.integer  "user_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "name"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
