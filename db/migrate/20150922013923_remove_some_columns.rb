class RemoveSomeColumns < ActiveRecord::Migration
  def change
    remove_column :scores, :subject_id
    remove_column :subjects, :student_id
  end
end
