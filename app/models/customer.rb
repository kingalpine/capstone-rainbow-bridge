class Customer < ApplicationRecord
  belongs_to :Customer_Status
  validates :Customer_First_Name, presence:true
  validates :Customer_Last_Name, presence:true
  validates :Customer_Email, presence:true
end
