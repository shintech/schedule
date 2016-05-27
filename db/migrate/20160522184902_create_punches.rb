class CreatePunches < ActiveRecord::Migration
  def change
    create_table :punches do |t|
      t.datetime :in
      t.datetime :out
      t.integer :work_day_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
