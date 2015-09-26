class RenameStudentsColumn < ActiveRecord::Migration
  def change
    remove_column :students, :gradeclass_id

    rename_column :students, :grade, :grade_id 
  end
end
