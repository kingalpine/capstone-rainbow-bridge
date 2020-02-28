class CreateTaskStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :task_statuses do |t|
      t.string :Task_Status_Name, null:false

      t.timestamps
    end
  end
end
