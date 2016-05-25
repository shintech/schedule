class CreateWorkDays < ActiveRecord::Migration
  def change
    create_table :work_days do |t|
      t.datetime :work_date
      
      t.timestamps null: false
    end
  end
end
