class CreateEmployeeTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_types do |t|
      t.text :Employee_Type_Description, null:false

      t.timestamps
    end
  end
end
