class RentalItem < ApplicationRecord
  validates :Rental_Item_Name, presence: true
  validates :Rental_Item_Cost, presence: true
  has_many :Rental_Line
end
