class Student < ApplicationRecord
  class << self
    # フォームに入力された文字列とデータベースのカラムを比較し，マッチしたオブジェクトを配列にして返す
    def search(query)
      rel = order(:grade, :school_class, :class_number)
      if query.present?
        rel = rel.where("first_name LIKE ? OR last_name LIKE ?", "%#{query}%", "%#{query}%")
      end
      rel
    end

    # フォームに入力された数値とデータベースのカラムを比較し，マッチしたオブジェクトを配列にして返す
    def grouping(grade, school_class)
      rel = order(:grade, :school_class, :class_number)
      if grade.present? && school_class.present?
        rel = rel.where("grade LIKE ? AND school_class LIKE ?", "%#{grade}%", "%#{school_class}%")
      end
      rel
    end

    # csvのヘッダを定義する
    def csv_attributes
      %W(id
       grade
       school_class
       class_number
       last_name
       first_name
       kyouka_kokugo_tishiki
       kyouka_kokugo_shikou
       kyouka_kokugo_syutai
       kyouka_kokugo_hyouka
       kyouka_syakai_tishiki
       kyouka_syakai_shikou
       kyouka_syakai_syutai
       kyouka_syakai_hyouka
       kyouka_sansu_tishiki
       kyouka_sansu_shikou
       kyouka_sansu_syutai
       kyouka_sansu_hyouka
       kyouka_rika_tishiki
       kyouka_rika_shikou
       kyouka_rika_syutai
       kyouka_rika_hyouka
       kyouka_seikatu_tishiki
       kyouka_seikatu_shikou
       kyouka_seikatu_syutai
       kyouka_seikatu_hyouka
       kyouka_ongaku_tishiki
       kyouka_ongaku_shikou
       kyouka_ongaku_syutai
       kyouka_ongaku_hyouka
       kyouka_zukou_tishiki
       kyouka_zukou_shikou
       kyouka_zukou_syutai
       kyouka_zukou_hyouka
       kyouka_katei_tishiki
       kyouka_katei_shikou
       kyouka_katei_syutai
       kyouka_katei_hyouka
       kyouka_taiiku_tishiki
       kyouka_taiiku_shikou
       kyouka_taiiku_syutai
       kyouka_taiiku_hyouka
       kyouka_gaikokugo_tishiki
       kyouka_gaikokugo_shikou
       kyouka_gaikokugo_syutai
       kyouka_gaikokugo_hyouka
       doutoku
       gaikokugo_katudou
       sougou_katudou
       sougou_kanten
       sougou_hyouka
       tokubetu_kanten
       tokubetu_gakkyu
       tokubetu_jidoukai
       tokubetu_club
       tokubetu_gyouji
       koudou_seikatu
       koudou_kenkou
       koudou_jisyu
       koudou_sekinin
       koudou_soui
       koudou_omoiyari
       koudou_seimei
       koudou_kinrou
       koudou_kousei
       koudou_koukyousin
       jiritu_katudou
       syoken
       jyugyou_nissuu
       syusseki_teisi
       syusseki_gimu
       kesseki
       syusseki_nissuu
       syusseki_bikou
      )
    end

    # URLでindexにcsvが指定されたとき，モデルオブジェクトをcsvにして返す
    def generate_csv
      bom = %w(EF BB BF).map { |e| e.hex.chr }.join
      CSV.generate(bom, headers: true, encoding: "UTF-8:UTF-8") do |csv|
        csv << csv_attributes
        all.each do |cont|
          csv << csv_attributes.map{|attr| cont.send(attr)}
        end
      end
    end

    # csvのインポート
    def import(file)
      CSV.foreach(file.path, headers: true) do |row|
        # IDが見つかれば，レコードを呼び出し，見つからなければ，新しく作成
        student = find_by(id: row[0]) || new
        # CSVからデータを取得して，設定
        student.attributes = row.to_hash.slice(*csv_attributes)
        # 保存
        student.save
      end
    end
  end
end
