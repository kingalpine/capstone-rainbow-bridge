class CreateRentalItems < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_items do |t|
      t.string :Rental_Item_Name, null:false
      t.text :Rental_Item_Description
      t.integer :Rental_Item_Cost

      t.timestamps
    end
  end
end
