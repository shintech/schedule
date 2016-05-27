class CreateWorkDays < ActiveRecord::Migration
  def change
    create_table :work_days do |t|
      t.datetime :work_date
      t.integer :pay_period_id
      t.timestamps null: false
    end
  end
end
