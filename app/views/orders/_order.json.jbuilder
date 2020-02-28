json.extract! order, :id, :Order_Description, :Order_Type_id, :Order_Status_id, :Customer_id, :Rental_Order_id, :Venue_Street_Address, :Venue_City, :Venue_State, :Venue_Zip, :Order_Cost, :Order_Delivery, :Order_Due_Date, :Order_Start_Date, :Order_Date_Finish, :created_at, :updated_at
json.url order_url(order, format: :json)
