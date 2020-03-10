class FrostingFlavor < ApplicationRecord
  validates :Frosting_Name, presence: true
  has_many :Tier
end
