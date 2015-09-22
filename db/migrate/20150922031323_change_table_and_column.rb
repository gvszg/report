class ChangeTableAndColumn < ActiveRecord::Migration
  def change
    drop_table :classes
    
    create_table :grade_classes do |t|
      t.integer :grade_class
      t.timestamps
    end
  end
end
