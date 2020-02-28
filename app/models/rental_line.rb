class RentalLine < ApplicationRecord
  belongs_to :Order
  belongs_to :Rental_Item
end
