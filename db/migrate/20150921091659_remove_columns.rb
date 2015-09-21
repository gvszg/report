class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :subjects, :student_id
  end
end
