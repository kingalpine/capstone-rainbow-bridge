json.extract! product, :id, :Product_Name, :Product_Description, :created_at, :updated_at
json.url product_url(product, format: :json)
