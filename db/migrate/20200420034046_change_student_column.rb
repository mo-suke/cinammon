class ChangeStudentColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :students, :class, :school_class
  end
end
