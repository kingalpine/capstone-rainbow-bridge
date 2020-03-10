class EmployeeType < ApplicationRecord
  validates :Employee_Type_Description, presence: true
  has_many :Employee
end
