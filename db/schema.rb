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

ActiveRecord::Schema.define(version: 20150922005555) do

  create_table "classrooms", force: :cascade do |t|
    t.integer  "room_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "grade_id"
  end

  create_table "grades", force: :cascade do |t|
    t.integer  "grade_number"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "subject_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer  "grade"
    t.integer  "classroom_id"
    t.integer  "number"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subject_scores", force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "score_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
  end

end
