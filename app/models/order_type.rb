class OrderType < ApplicationRecord
  validates :Order_Description, presence: true
  has_many :Order
end
