class AddScoreableToScores < ActiveRecord::Migration
  def change
    add_column :scores, :scoreable_id, :integer
    add_column :scores, :scoreable_type, :string
    add_index :scores, :scoreable_id
  end
end
