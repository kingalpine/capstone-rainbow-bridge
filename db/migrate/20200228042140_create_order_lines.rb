class CreateOrderLines < ActiveRecord::Migration[6.0]
  def change
    create_table :order_lines do |t|
      t.references :Order, null: false, foreign_key: true
      t.references :Product, null: false, foreign_key: true
      t.references :Order_Line_Status, null: false, foreign_key: true
      t.timestamp :Order_Line_Start_Date, null: false
      t.timestamp :Order_Line_Finish_Date
      t.text :Order_Line_Description
      t.text :Special_Order_Notes

      t.timestamps
    end
  end
end
