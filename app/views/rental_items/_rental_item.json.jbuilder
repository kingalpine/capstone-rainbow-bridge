json.extract! rental_item, :id, :Rental_Item_Name, :Rental_Item_Description, :Rental_Item_Cost, :created_at, :updated_at
json.url rental_item_url(rental_item, format: :json)
