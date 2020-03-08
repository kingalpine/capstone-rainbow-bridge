class EmployeeStatus < ApplicationRecord
  validates :Employee_Status_Name, presence: true
end
