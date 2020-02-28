class CreateCustomerStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_statuses do |t|
      t.string :Customer_Status_Name, null:false

      t.timestamps
    end
  end
end
