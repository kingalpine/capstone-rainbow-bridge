class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :Order_Line, null: false, foreign_key: true
      t.timestamp :Task_Start_Date, null: false
      t.timestamp :Task_Due_Date, null: false
      t.timestamp :Task_Finish_Date
      t.string :Task_Name, null: false
      t.text :Task_Description, null: false
      t.references :Task_Status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
