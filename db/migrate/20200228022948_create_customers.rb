class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.references :Customer_Status, null: false, foreign_key: true
      t.string :Customer_First_Name, null:false
      t.string :Customer_Last_Name, null:false
      t.string :Customer_Email, null:false
      t.string :Customer_Phone
      t.string :Customer_Street_Address
      t.string :string
      t.string :Customer_City
      t.string :Customer_State
      t.string :Customer_Zip_Code

      t.timestamps
    end
  end
end
