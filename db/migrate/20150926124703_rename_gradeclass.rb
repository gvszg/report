class RenameGradeclass < ActiveRecord::Migration
  def up
    rename_column :gradeclasses, :gradeclass, :number

    rename_table :gradeclasses, :grades
  end

  def down
    rename_column :grades, :number, :gradeclass
    
    rename_table :grades, :gradeclasses
  end
end
