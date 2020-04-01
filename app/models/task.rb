class Task < ApplicationRecord
  belongs_to :task_status
  belongs_to :order_line
  has_many :task_assignments

  validates :task_start_date, presence: true
  validates :task_due_date, presence: true
  validates :task_name, presence: true

  accepts_nested_attributes_for :task_assignments

  rails_admin do
    nested do
      configure :order_line do
        hide
      end
    end
  end

  rails_admin do
    object_label_method :display_name
  end

  def display_name
      self.task_name
  end

  has_paper_trail
end
