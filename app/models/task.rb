class Task < ApplicationRecord
  belongs_to :Order_Line
  belongs_to :Task_Status
  validates :Task_Start_Date, presence: true
  validates :Task_Due_Date, presence: true
  validates :Task_Finish_Date, presence: true
  validates :Task_Name, presence: true
end
