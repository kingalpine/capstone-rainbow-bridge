class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.text :Order_Description
      t.references :Order_Type, null: false, foreign_key: true
      t.references :Order_Status, null: false, foreign_key: true
      t.references :Customer, null: false, foreign_key: true
      t.string :Venue_Street_Address
      t.string :Venue_City
      t.string :Venue_State
      t.string :Venue_Zip
      t.integer :Order_Cost
      t.boolean :Order_Delivery
      t.timestamp :Order_Due_Date
      t.timestamp :Order_Start_Date
      t.timestamp :Order_Date_Finish

      t.timestamps
    end
  end
end
