class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :postal_code

      t.timestamps null: false
    end
  end
end
