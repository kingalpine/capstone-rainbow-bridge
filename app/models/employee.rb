class Employee < ApplicationRecord
  belongs_to :Employee_Status
  belongs_to :Employee_Type
end
