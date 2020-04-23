class AddColumnToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :kyouka_sansu_tishiki, :integer, default: 0
    add_column :students, :kyouka_sansu_shikou, :integer, default: 0
    add_column :students, :kyouka_sansu_syutai, :integer, default: 0
    add_column :students, :kyouka_sansu_hyouka, :integer, default: 0

    add_column :students, :kyouka_syakai_tishiki, :integer, default: 0
    add_column :students, :kyouka_syakai_shikou, :integer, default: 0
    add_column :students, :kyouka_syakai_syutai, :integer, default: 0
    add_column :students, :kyouka_syakai_hyouka, :integer, default: 0

    add_column :students, :kyouka_rika_tishiki, :integer, default: 0
    add_column :students, :kyouka_rika_shikou, :integer, default: 0
    add_column :students, :kyouka_rika_syutai, :integer, default: 0
    add_column :students, :kyouka_rika_hyouka, :integer, default: 0

    add_column :students, :kyouka_seikatu_tishiki, :integer, default: 0
    add_column :students, :kyouka_seikatu_shikou, :integer, default: 0
    add_column :students, :kyouka_seikatu_syutai, :integer, default: 0
    add_column :students, :kyouka_seikatu_hyouka, :integer, default: 0

    add_column :students, :kyouka_ongaku_tishiki, :integer, default: 0
    add_column :students, :kyouka_ongaku_shikou, :integer, default: 0
    add_column :students, :kyouka_ongaku_syutai, :integer, default: 0
    add_column :students, :kyouka_ongaku_hyouka, :integer, default: 0

    add_column :students, :kyouka_zukou_tishiki, :integer, default: 0
    add_column :students, :kyouka_zukou_shikou, :integer, default: 0
    add_column :students, :kyouka_zukou_syutai, :integer, default: 0
    add_column :students, :kyouka_zukou_hyouka, :integer, default: 0

    add_column :students, :kyouka_katei_tishiki, :integer, default: 0
    add_column :students, :kyouka_katei_shikou, :integer, default: 0
    add_column :students, :kyouka_katei_syutai, :integer, default: 0
    add_column :students, :kyouka_katei_hyouka, :integer, default: 0

    add_column :students, :kyouka_taiiku_tishiki, :integer, default: 0
    add_column :students, :kyouka_taiiku_shikou, :integer, default: 0
    add_column :students, :kyouka_taiiku_syutai, :integer, default: 0
    add_column :students, :kyouka_taiiku_hyouka, :integer, default: 0

    add_column :students, :kyouka_gaikokugo_tishiki, :integer, default: 0
    add_column :students, :kyouka_gaikokugo_shikou, :integer, default: 0
    add_column :students, :kyouka_gaikokugo_syutai, :integer, default: 0
    add_column :students, :kyouka_gaikokugo_hyouka, :integer, default: 0

    add_column :students, :doutoku, :text, default: ""

    add_column :students, :gaikokugo_katudou, :text, default: ""

    add_column :students, :sougou_katudou, :text, default: ""
    add_column :students, :sougou_kanten, :text, default: ""
    add_column :students, :sougou_hyouka, :text, default: ""

    add_column :students, :tokubetu_kanten, :text, default: ""
    add_column :students, :tokubetu_gakkyu, :integer, default: 0
    add_column :students, :tokubetu_jidoukai, :integer, default: 0
    add_column :students, :tokubetu_club, :integer, default: 0
    add_column :students, :tokubetu_gyouji, :integer, default: 0

    add_column :students, :koudou_seikatu, :integer, default: 0
    add_column :students, :koudou_kenkou, :integer, default: 0
    add_column :students, :koudou_jisyu, :integer, default: 0
    add_column :students, :koudou_sekinin, :integer, default: 0
    add_column :students, :koudou_soui, :integer, default: 0
    add_column :students, :koudou_omoiyari, :integer, default: 0
    add_column :students, :koudou_seimei, :integer, default: 0
    add_column :students, :koudou_kinrou, :integer, default: 0
    add_column :students, :koudou_kousei, :integer, default: 0
    add_column :students, :koudou_koukyousin, :integer, default: 0

    add_column :students, :jiritu_katudou, :text, default: ""

    add_column :students, :syoken, :text, default: ""

    add_column :students, :jyugyou_nissuu, :integer, default: 200
    add_column :students, :syusseki_teisi, :integer, default: 0
    add_column :students, :syusseki_gimu, :integer, default: 200
    add_column :students, :kesseki, :integer, default: 200
    add_column :students, :syusseki_nissuu, :integer, default: 200
    add_column :students, :syusseki_bikou, :text, default: ""
  end
end
