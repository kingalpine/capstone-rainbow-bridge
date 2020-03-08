class OrderLineStatus < ApplicationRecord
  validates :Order_Line_Status_Name, presence: true
end
