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

ActiveRecord::Schema[7.0].define(version: 2023_02_05_071344) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievement_standards", force: :cascade do |t|
    t.text "description"
    t.text "knowledge"
    t.text "skills"
    t.text "understanding"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "capabilities", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_groups", force: :cascade do |t|
    t.text "class_code"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "content_descriptors", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "code"
    t.text "elaborations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "knowledge"
    t.text "understanding"
    t.text "skills"
    t.text "notes"
  end

  create_table "learning_areas", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modes", force: :cascade do |t|
    t.text "name"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "priorities", force: :cascade do |t|
    t.text "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strands", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "substrands", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subthreads", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.text "notes"
    t.integer "weighting"
    t.text "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "password_digest"
    t.boolean "admin"
  end

  create_table "year_descriptions", force: :cascade do |t|
    t.text "description"
    t.text "knowledge"
    t.text "understanding"
    t.text "skills"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "years", force: :cascade do |t|
    t.integer "year"
    t.boolean "is_band"
    t.integer "band_start"
    t.integer "band_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "label"
  end

end
