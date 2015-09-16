class CreateCustomerCases < ActiveRecord::Migration
  def change
    create_table :customer_cases do |t|
      t.string :name, null: false
      t.string :email_address, null: false 
      t.text :case, null: false

      t.timestamps
    end
  end
end
