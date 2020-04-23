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

ActiveRecord::Schema.define(version: 2020_04_23_153234) do

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "grade"
    t.integer "school_class"
    t.integer "class_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "kyouka_kokugo_tishiki", default: 0
    t.integer "kyouka_kokugo_shikou", default: 0
    t.integer "kyouka_kokugo_syutai", default: 0
    t.integer "kyouka_kokugo_hyouka", default: 0
    t.integer "kyouka_sansu_tishiki", default: 0
    t.integer "kyouka_sansu_shikou", default: 0
    t.integer "kyouka_sansu_syutai", default: 0
    t.integer "kyouka_sansu_hyouka", default: 0
    t.integer "kyouka_syakai_tishiki", default: 0
    t.integer "kyouka_syakai_shikou", default: 0
    t.integer "kyouka_syakai_syutai", default: 0
    t.integer "kyouka_syakai_hyouka", default: 0
    t.integer "kyouka_rika_tishiki", default: 0
    t.integer "kyouka_rika_shikou", default: 0
    t.integer "kyouka_rika_syutai", default: 0
    t.integer "kyouka_rika_hyouka", default: 0
    t.integer "kyouka_seikatu_tishiki", default: 0
    t.integer "kyouka_seikatu_shikou", default: 0
    t.integer "kyouka_seikatu_syutai", default: 0
    t.integer "kyouka_seikatu_hyouka", default: 0
    t.integer "kyouka_ongaku_tishiki", default: 0
    t.integer "kyouka_ongaku_shikou", default: 0
    t.integer "kyouka_ongaku_syutai", default: 0
    t.integer "kyouka_ongaku_hyouka", default: 0
    t.integer "kyouka_zukou_tishiki", default: 0
    t.integer "kyouka_zukou_shikou", default: 0
    t.integer "kyouka_zukou_syutai", default: 0
    t.integer "kyouka_zukou_hyouka", default: 0
    t.integer "kyouka_katei_tishiki", default: 0
    t.integer "kyouka_katei_shikou", default: 0
    t.integer "kyouka_katei_syutai", default: 0
    t.integer "kyouka_katei_hyouka", default: 0
    t.integer "kyouka_taiiku_tishiki", default: 0
    t.integer "kyouka_taiiku_shikou", default: 0
    t.integer "kyouka_taiiku_syutai", default: 0
    t.integer "kyouka_taiiku_hyouka", default: 0
    t.integer "kyouka_gaikokugo_tishiki", default: 0
    t.integer "kyouka_gaikokugo_shikou", default: 0
    t.integer "kyouka_gaikokugo_syutai", default: 0
    t.integer "kyouka_gaikokugo_hyouka", default: 0
    t.text "doutoku", default: ""
    t.text "gaikokugo_katudou", default: ""
    t.text "sougou_katudou", default: ""
    t.text "sougou_kanten", default: ""
    t.text "sougou_hyouka", default: ""
    t.text "tokubetu_kanten", default: ""
    t.integer "tokubetu_gakkyu", default: 0
    t.integer "tokubetu_jidoukai", default: 0
    t.integer "tokubetu_club", default: 0
    t.integer "tokubetu_gyouji", default: 0
    t.integer "koudou_seikatu", default: 0
    t.integer "koudou_kenkou", default: 0
    t.integer "koudou_jisyu", default: 0
    t.integer "koudou_sekinin", default: 0
    t.integer "koudou_soui", default: 0
    t.integer "koudou_omoiyari", default: 0
    t.integer "koudou_seimei", default: 0
    t.integer "koudou_kinrou", default: 0
    t.integer "koudou_kousei", default: 0
    t.integer "koudou_koukyousin", default: 0
    t.text "jiritu_katudou", default: ""
    t.text "syoken", default: ""
    t.integer "jyugyou_nissuu", default: 200
    t.integer "syusseki_teisi", default: 0
    t.integer "syusseki_gimu", default: 200
    t.integer "kesseki", default: 200
    t.integer "syusseki_nissuu", default: 200
    t.text "syusseki_bikou", default: ""
  end

end
