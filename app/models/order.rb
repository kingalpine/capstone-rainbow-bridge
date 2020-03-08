class Order < ApplicationRecord
  belongs_to :Order_Type
  belongs_to :Order_Status
  belongs_to :Customer
  belongs_to :Rental_Order
  has_many :order_lines
  has_many :rental_lines

  accepts_nested_attributes_for :order_lines, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :rental_lines, reject_if: :all_blank, allow_destroy: true
end
