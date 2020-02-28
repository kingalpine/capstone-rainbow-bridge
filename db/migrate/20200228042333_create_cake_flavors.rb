class CreateCakeFlavors < ActiveRecord::Migration[6.0]
  def change
    create_table :cake_flavors do |t|
      t.string :Cake_Name, null:false

      t.timestamps
    end
  end
end
