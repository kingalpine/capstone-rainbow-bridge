class EmployeeStatus < ApplicationRecord
  validates :Employee_Status_Name, presence: true
  has_many :Employee
end
