class AddColumnStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :kyouka_kokugo_tishiki, :integer, default: 0
    add_column :students, :kyouka_kokugo_shikou, :integer, default: 0
    add_column :students, :kyouka_kokugo_syutai, :integer, default: 0
    add_column :students, :kyouka_kokugo_hyouka, :integer, default: 0
  end
end
