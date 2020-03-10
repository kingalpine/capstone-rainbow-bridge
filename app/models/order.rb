class Order < ApplicationRecord
  belongs_to :Order_Type
  belongs_to :Order_Status
  belongs_to :Customer
  validates :Order_Cost, presence: true
  validates :Order_Due_Date, presence: true
  validates :Order_Start_Date, presence: true
  has_many :Order_lines
  has_many :rental_lines
  accepts_nested_attributes_for :order_lines, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :rental_lines, reject_if: :all_blank, allow_destroy: true

end
