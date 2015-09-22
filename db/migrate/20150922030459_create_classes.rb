class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.integer :class
      t.timestamps
    end
  end
end
