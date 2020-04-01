class CreateOrderLines < ActiveRecord::Migration[6.0]
  def change
    create_table :order_lines do |t|
      t.string :order_line_description
      t.datetime :order_line_start_date, null: false
      t.datetime :order_line_finish_date
      t.string :special_order_notes
      t.references :product, null: false, foreign_key: true
      t.references :order_line_status, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
