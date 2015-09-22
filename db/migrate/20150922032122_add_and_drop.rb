class AddAndDrop < ActiveRecord::Migration
  def change
    drop_table :classrooms, :grades

    rename_column :students, :classroom_id, :grade_class_id
  end
end
