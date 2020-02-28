json.extract! customer, :id, :Customer_Status_id, :Customer_First_Name, :Customer_Last_Name, :Customer_Email, :Customer_Phone, :Customer_Street_Address, :string, :Customer_City, :Customer_State, :Customer_Zip_Code, :created_at, :updated_at
json.url customer_url(customer, format: :json)
