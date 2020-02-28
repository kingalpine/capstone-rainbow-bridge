class CustomerStatus < ApplicationRecord
  validates :Customer_Status_Name, presence: true
  has_one :Customer
end
