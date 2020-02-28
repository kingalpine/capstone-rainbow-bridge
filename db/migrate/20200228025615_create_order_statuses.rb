class CreateOrderStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :order_statuses do |t|
      t.string :Order_Status_Name, null:false

      t.timestamps
    end
  end
end
