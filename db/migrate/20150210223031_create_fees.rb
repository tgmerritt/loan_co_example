class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.float :origination_fee
      t.decimal :origination_fee_percent
      t.float :maintenance_fee
      t.integer :maintenance_fee_period

      t.timestamps null: false
    end
  end
end
