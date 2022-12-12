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

ActiveRecord::Schema[7.0].define(version: 2022_12_12_181440) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charts", force: :cascade do |t|
    t.date "t_date"
    t.string "aq_list"
    t.string "c_med_list"
    t.string "c_for_list"
    t.string "o_treats"
    t.text "soap"
    t.bigint "regi_id", null: false
    t.datetime "created_at", precision: 0, null: false
    t.datetime "updated_at", precision: 0, null: false
    t.index ["regi_id"], name: "index_charts_on_regi_id"
  end

  create_table "patients", force: :cascade do |t|
    t.date "v_date"
    t.string "m_stat"
    t.decimal "weight", precision: 4, scale: 1
    t.decimal "height", precision: 2, scale: 1
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "cell"
    t.string "home"
    t.string "work"
    t.string "email"
    t.string "referred"
    t.string "com1"
    t.string "com2"
    t.string "com3"
    t.string "pain_scale"
    t.decimal "d_lost", precision: 4, scale: 1
    t.decimal "d_restd", precision: 4, scale: 1
    t.string "c_onset"
    t.string "better"
    t.string "worse"
    t.string "o_drs"
    t.date "o_drs_when"
    t.string "pcp_name"
    t.string "hosp"
    t.date "h_when"
    t.string "diag_given"
    t.string "diag_where"
    t.string "aq_b4"
    t.string "aqrist"
    t.string "aq_where"
    t.string "di_list", default: [], array: true
    t.string "string", default: [], array: true
    t.string "o_dis"
    t.string "inj_surg"
    t.string "med_taken"
    t.string "alcohol"
    t.string "tobacco"
    t.date "last_prd"
    t.string "preg"
    t.integer "preg_wks"
    t.bigint "regi_id", null: false
    t.datetime "created_at", precision: 0, null: false
    t.datetime "updated_at", precision: 0, null: false
    t.date "d_onset"
    t.index ["regi_id"], name: "index_patients_on_regi_id"
  end

  create_table "regis", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "init"
    t.string "gender"
    t.date "dob"
    t.datetime "created_at", precision: 0, null: false
    t.datetime "updated_at", precision: 0, null: false
  end

  add_foreign_key "charts", "regis"
  add_foreign_key "patients", "regis"
end
