class OrderLine < ApplicationRecord
  belongs_to :Order
  belongs_to :Product
  belongs_to :Order_Line_Status
end
