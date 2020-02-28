class Order < ApplicationRecord
  belongs_to :Order_Type
  belongs_to :Order_Status
  belongs_to :Customer
  belongs_to :Rental_Order
end
