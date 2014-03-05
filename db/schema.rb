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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140305173802) do

  create_table "job_offers", :force => true do |t|
    t.text     "company_description"
    t.string   "company_name"
    t.string   "company_logo_url"
    t.string   "country"
    t.text     "description"
    t.string   "industry"
    t.string   "location"
    t.string   "occupation"
    t.string   "salary"
    t.text     "summary"
    t.string   "title"
    t.string   "experience_level"
    t.string   "company_baseline"
    t.date     "published_at"
    t.boolean  "recommendation_allowed"
    t.boolean  "self_application_allowed"
    t.string   "company_picture_url"
    t.string   "recommendation"
    t.string   "self_application"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.boolean  "recommended",              :default => false
  end

  create_table "recommendations", :force => true do |t|
    t.boolean  "male"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "company"
    t.string   "job_title"
    t.string   "phone"
    t.string   "linked_in"
    t.text     "message"
    t.boolean  "named"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
