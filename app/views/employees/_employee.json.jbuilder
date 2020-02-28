json.extract! employee, :id, :Employee_Status_id, :Employee_First_Name, :Employee_Last_Name, :Employee_Email, :Employee_Phone, :Employee_Type_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
