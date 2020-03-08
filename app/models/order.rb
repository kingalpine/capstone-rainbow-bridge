class Order < ApplicationRecord
  belongs_to :Order_Type
  belongs_to :Order_Status
  belongs_to :Customer
  belongs_to :Rental_Order
  validates :Order_Cost, presence: true
  validates :Order_Delivery, presence: true
  validates :Order_Due_Date, presence: true
  validates :Order_Start_Date, presence: true
end
