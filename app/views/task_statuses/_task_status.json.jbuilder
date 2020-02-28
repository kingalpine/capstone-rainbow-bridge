json.extract! task_status, :id, :Task_Status_Name, :created_at, :updated_at
json.url task_status_url(task_status, format: :json)
