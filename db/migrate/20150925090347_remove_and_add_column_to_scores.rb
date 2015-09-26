class RemoveAndAddColumnToScores < ActiveRecord::Migration
  def change
    remove_column :scores, :scoreable_id
    remove_column :scores, :scoreable_type
    add_column :scores, :subject_id, :integer
  end
end
