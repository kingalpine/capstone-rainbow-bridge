class Product < ApplicationRecord
  validates :Product_Name, presence: true
  validates :Product_Description, presence: true
end
