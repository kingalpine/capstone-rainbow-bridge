class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :Product_Name, null:false
      t.text :Product_Description, null:false

      t.timestamps
    end
  end
end
