class OrderLine < ApplicationRecord
  belongs_to :Order
  belongs_to :Product
  belongs_to :Order_Line_Status
  validates :Order_Line_Start_Date, presence: true
  validates :Order_Line_Finish_Date, presence: true
  has_many :Order_Line_Restriction
  has_many :Tier
end
