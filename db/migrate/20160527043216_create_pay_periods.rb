class CreatePayPeriods < ActiveRecord::Migration
  def change
    create_table :pay_periods do |t|

      t.timestamps null: false
    end
  end
end
