class CreateStudentSubjects < ActiveRecord::Migration
  def change
    create_table :student_subjects do |t|
      t.integer :student_id, :subject_id
      t.timestamps
    end
  end
end
