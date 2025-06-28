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

ActiveRecord::Schema[8.0].define(version: 2025_06_28_192812) do
  create_table "mentees", force: :cascade do |t|
    t.string "name", null: false
    t.string "current_title"
    t.string "current_company"
    t.string "email", null: false
    t.string "linkedin_url"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_mentees_on_email", unique: true
  end

  create_table "mentors", force: :cascade do |t|
    t.string "name"
    t.string "current_title"
    t.string "current_company"
    t.string "email"
    t.string "linkedin_url"
    t.text "bio"
    t.text "mentorship_topics"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_mentors_on_email", unique: true
  end

  create_table "mentorships", force: :cascade do |t|
    t.integer "mentor_id", null: false
    t.integer "mentee_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentee_id"], name: "index_mentorships_on_mentee_id"
    t.index ["mentor_id"], name: "index_mentorships_on_mentor_id"
  end

  add_foreign_key "mentorships", "mentees"
  add_foreign_key "mentorships", "mentors"
end
