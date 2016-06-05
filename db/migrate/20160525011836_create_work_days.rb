class CreateWorkDays < ActiveRecord::Migration
  def change
    create_table :work_days do |t|
      t.datetime :work_date, default: DateTime.now
      t.integer :pay_period_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
