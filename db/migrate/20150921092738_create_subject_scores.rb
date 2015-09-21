class CreateSubjectScores < ActiveRecord::Migration
  def change
    create_table :subject_scores do |t|
      t.integer :subject_id, :score_id
      t.timestamps
    end
  end
end
