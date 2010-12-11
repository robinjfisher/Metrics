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

ActiveRecord::Schema.define(:version => 20101211172443) do

  create_table "campaign_signups", :force => true do |t|
    t.integer  "user_id"
    t.integer  "campaign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaign_visits", :force => true do |t|
    t.integer  "campaign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "request_ip"
  end

  create_table "campaigns", :force => true do |t|
    t.string   "name"
    t.text     "notes"
    t.date     "start_date"
    t.date     "end_date"
    t.float    "spend_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
