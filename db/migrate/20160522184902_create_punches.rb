class CreatePunches < ActiveRecord::Migration
  def change
    create_table :punches do |t|
      t.datetime :in
      t.datetime :out

      t.timestamps null: false
    end
  end
end
