class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :order_description
      t.decimal :order_cost
      t.datetime :order_start_date
      t.datetime :order_due_date
      t.datetime :order_date_finish
      t.boolean :order_delivery
      t.string :delivery_street_address
      t.string :delivery_city
      t.string :delivery_state
      t.string :delivery_zip_code
      t.references :customer, null: false, foreign_key: true
      t.references :order_type, null: false, foreign_key: true
      t.references :order_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
