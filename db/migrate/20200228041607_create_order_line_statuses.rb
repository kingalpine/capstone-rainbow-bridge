class CreateOrderLineStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :order_line_statuses do |t|
      t.string :Order_Line_Status_Name, null:false

      t.timestamps
    end
  end
end
