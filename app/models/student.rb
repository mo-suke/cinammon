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
      %W(id grade school_class class_number last_name first_name)
    end

    # URLでindexにcsvが指定されたとき，モデルオブジェクトをcsvにして返す
    def generate_csv
      CSV.generate(headers: :true) do |csv|
        csv << csv_attributes
        all.each do |cont|
          csv << csv_attributes.map{|attr| cont.send(attr)}
        end
      end
    end
  end
end
