class CreateEmployeeStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_statuses do |t|
      t.string :Employee_Status_Name, null:false

      t.timestamps
    end
  end
end
