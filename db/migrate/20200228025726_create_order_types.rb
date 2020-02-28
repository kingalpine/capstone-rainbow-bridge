class CreateOrderTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :order_types do |t|
      t.text :Order_Description, null:false

      t.timestamps
    end
  end
end
