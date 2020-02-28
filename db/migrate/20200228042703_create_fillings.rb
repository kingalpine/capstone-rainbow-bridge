class CreateFillings < ActiveRecord::Migration[6.0]
  def change
    create_table :fillings do |t|
      t.string :Filling_Name, null:false
      t.text :Filling_Description, null:false

      t.timestamps
    end
  end
end
