# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_10_000202) do

  create_table "class_sessions", force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "level_id", null: false
    t.integer "course_id", null: false
    t.integer "period_id", null: false
    t.integer "section_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_class_sessions_on_course_id"
    t.index ["level_id"], name: "index_class_sessions_on_level_id"
    t.index ["period_id"], name: "index_class_sessions_on_period_id"
    t.index ["section_id"], name: "index_class_sessions_on_section_id"
    t.index ["teacher_id"], name: "index_class_sessions_on_teacher_id"
  end

  create_table "competencies", force: :cascade do |t|
    t.string "description"
    t.integer "level_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["level_id"], name: "index_competencies_on_level_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "course_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "essays", force: :cascade do |t|
    t.string "name"
    t.text "prompt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "course_id", null: false
    t.index ["course_id"], name: "index_essays_on_course_id"
  end

  create_table "exams", force: :cascade do |t|
    t.string "name"
    t.text "exam_prompt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "course_id", null: false
    t.index ["course_id"], name: "index_exams_on_course_id"
  end

  create_table "homeworks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "course_id", null: false
    t.index ["course_id"], name: "index_homeworks_on_course_id"
  end

  create_table "levels", force: :cascade do |t|
    t.integer "year"
    t.string "exam"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "periods", force: :cascade do |t|
    t.integer "number"
    t.string "start_time"
    t.string "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer "number"
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "assignment_type", null: false
    t.integer "assignment_id", null: false
    t.index ["assignment_type", "assignment_id"], name: "index_scores_on_assignment_type_and_assignment_id"
    t.index ["student_id"], name: "index_scores_on_student_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "emblem"
    t.text "quote"
    t.string "section_lead"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_class_sessions", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "class_session_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["class_session_id"], name: "index_student_class_sessions_on_class_session_id"
    t.index ["student_id"], name: "index_student_class_sessions_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "section_id", null: false
    t.integer "level_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["level_id"], name: "index_students_on_level_id"
    t.index ["section_id"], name: "index_students_on_section_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "class_sessions", "courses"
  add_foreign_key "class_sessions", "levels"
  add_foreign_key "class_sessions", "periods"
  add_foreign_key "class_sessions", "sections"
  add_foreign_key "class_sessions", "teachers"
  add_foreign_key "competencies", "levels"
  add_foreign_key "essays", "courses"
  add_foreign_key "exams", "courses"
  add_foreign_key "homeworks", "courses"
  add_foreign_key "scores", "students"
  add_foreign_key "student_class_sessions", "class_sessions"
  add_foreign_key "student_class_sessions", "students"
  add_foreign_key "students", "levels"
  add_foreign_key "students", "sections"
end
