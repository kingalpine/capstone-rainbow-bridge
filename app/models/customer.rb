class Customer < ApplicationRecord
  belongs_to :Customer_Status
  has_many :orders
  validates :Customer_First_Name, presence:true
  validates :Customer_Last_Name, presence:true
  validates :Customer_Email, presence:true

  # Added by Tyler 3/7, nested form attributes
  accepts_nested_attributes_for :orders, reject_if: :all_blank, allow_destroy: true
end
