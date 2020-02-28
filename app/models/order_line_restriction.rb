class OrderLineRestriction < ApplicationRecord
  belongs_to :Order_Line
  belongs_to :Dietary_Restriction
end
