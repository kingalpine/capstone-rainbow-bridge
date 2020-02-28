json.extract! task, :id, :Order_Line_id, :Task_Start_Date, :Task_Due_Date, :Task_Finish_Date, :Task_Name, :Task_Description, :Task_Status_id, :created_at, :updated_at
json.url task_url(task, format: :json)
