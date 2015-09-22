class AddStudentIdToScores < ActiveRecord::Migration
  def change
    add_column :scores, :subject_id, :integer
  end
end
