class SomeChanges < ActiveRecord::Migration
  def change
    rename_table :grade_classes, :gradeclasses
    rename_column :gradeclasses, :grade_class, :gradeclass
    rename_column :students, :grade_class_id, :gradeclass_id
  end
end
