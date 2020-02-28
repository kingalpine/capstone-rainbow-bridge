class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.references :Employee_Status, null: false, foreign_key: true
      t.string :Employee_First_Name, null:false
      t.string :Employee_Last_Name, null:false
      t.string :Employee_Email, null:false
      t.string :Employee_Phone, null:false
      t.references :Employee_Type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
