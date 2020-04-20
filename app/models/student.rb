class Student < ApplicationRecord
  class << self
    def search(query)
      rel = order(:grade, :school_class, :class_number)
      if query.present?
        rel = rel.where("first_name LIKE ? OR last_name LIKE ?", "%#{query}%", "%#{query}%")
      end
      rel
    end

    def grouping(grade, school_class)
      rel = order(:grade, :school_class, :class_number)
      if grade.present? && school_class.present?
        rel = rel.where("grade LIKE ? AND school_class LIKE ?", "%#{grade}%", "%#{school_class}%")
      end
      rel
    end
  end
end
