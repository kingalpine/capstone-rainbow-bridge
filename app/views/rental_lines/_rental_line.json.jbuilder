json.extract! rental_line, :id, :Order_id, :Rental_Item_id, :created_at, :updated_at
json.url rental_line_url(rental_line, format: :json)
