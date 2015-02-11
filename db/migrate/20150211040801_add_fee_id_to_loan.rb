class AddFeeIdToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :fee_id, :integer
    add_column :loans, :user_id, :integer
    add_index  :loans, :user_id
    add_index  :loans, :fee_id
  end
end
