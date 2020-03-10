class DietaryRestriction < ApplicationRecord
  validates :Dietary_Restriction_Name, presence: true
  has_many :Order_Line_Restriction
end
