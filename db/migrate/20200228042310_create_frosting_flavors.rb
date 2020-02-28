class CreateFrostingFlavors < ActiveRecord::Migration[6.0]
  def change
    create_table :frosting_flavors do |t|
      t.string :Frosting_Name, null:false

      t.timestamps
    end
  end
end
