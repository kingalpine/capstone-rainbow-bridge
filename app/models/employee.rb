class Employee < ApplicationRecord
  belongs_to :Employee_Status
  belongs_to :Employee_Type
  validates :Employee_First_Name, presence: true
  validates :Employee_Last_Name, presence: true
  validates :Employee_Email, presence: true
  validates :Employee_Phone, presence: true
  has_many :Task_Assignment
end
