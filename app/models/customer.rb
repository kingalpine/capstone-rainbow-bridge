class Customer < ApplicationRecord
  belongs_to :Customer_Status
  has_many :orders
  validates :Customer_First_Name, presence:true
  validates :Customer_Last_Name, presence:true
  validates :Customer_Email, presence:true

  # Added by Tyler 3/7, nested form attributes
  accepts_nested_attributes_for :orders, reject_if: :all_blank, allow_destroy: true

  #Added by Daniel 3/8, method to concatenate Customer_First_Name and Customer_Last_Name
  def full_name
    "#{Customer_First_Name} #{Customer_Last_Name}"
  end
end
