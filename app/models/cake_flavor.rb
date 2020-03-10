class CakeFlavor < ApplicationRecord
  validates :Cake_Name, presence: true
  has_many :Tier
end
