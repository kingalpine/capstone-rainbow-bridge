json.extract! order_line, :id, :Order_id, :Product_id, :Order_Line_Status_id, :Order_Line_Start_Date, :Order_Line_Finish_Date, :Order_Line_Description, :Special_Order_Notes, :created_at, :updated_at
json.url order_line_url(order_line, format: :json)
