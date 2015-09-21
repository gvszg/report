class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :grade, :classroom_id, :number
      t.string :name
      t.timestamps
    end
  end
end
