class Student < ApplicationRecord
  class << self
    def search(query)
      rel = order("class_number")
      if query.present?
        rel = rel.where("first_name LIKE ? OR last_name LIKE ?", "%#{query}%", "%#{query}%")
      end
      rel
    end
  end
end
