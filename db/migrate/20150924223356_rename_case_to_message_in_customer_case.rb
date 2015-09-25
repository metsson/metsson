class RenameCaseToMessageInCustomerCase < ActiveRecord::Migration
  def change
    rename_column :customer_cases, :case, :message 
  end
end
