class OrderStatus < ApplicationRecord
  validates :Order_Status_Name, presence: true
  has_many :Order 
end
