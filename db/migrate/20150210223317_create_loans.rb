class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.decimal :interest_rate
      t.integer :interest_rate_period
      t.float :balance
      t.float :principal
      t.integer :load_period_duration
      t.integer :loan_period_type

      t.timestamps null: false
    end
  end
end
