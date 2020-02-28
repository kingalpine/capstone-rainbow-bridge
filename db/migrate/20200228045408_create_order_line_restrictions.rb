class CreateOrderLineRestrictions < ActiveRecord::Migration[6.0]
  def change
    create_table :order_line_restrictions do |t|
      t.references :Order_Line, null: false, foreign_key: true
      t.references :Dietary_Restriction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
