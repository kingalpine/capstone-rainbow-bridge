class CreateTaskAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :task_assignments do |t|
      t.references :Task, null: false, foreign_key: true
      t.references :Employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
