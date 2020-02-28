class TaskAssignment < ApplicationRecord
  belongs_to :Task
  belongs_to :Employee
end
