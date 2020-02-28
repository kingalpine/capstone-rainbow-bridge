class Task < ApplicationRecord
  belongs_to :Order_Line
  belongs_to :Task_Status
end
