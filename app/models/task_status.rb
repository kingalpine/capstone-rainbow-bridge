class TaskStatus < ApplicationRecord
  validates :Task_Status_Name, presence: true
  has_many :Task
end
