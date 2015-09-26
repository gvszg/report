class RemoveScoresColumn < ActiveRecord::Migration
  def change
    remove_column :scores, :subject_id
  end
end
