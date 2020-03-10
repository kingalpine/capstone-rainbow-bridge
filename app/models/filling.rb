class Filling < ApplicationRecord
  validates :Filling_Name, presence: true
  has_many :Tier_Filling
end
