class Employee < ApplicationRecord
  belongs_to :employee_status
  belongs_to :employee_type
  has_many :task_assignments

  validates :employee_first_name, presence: true, format: {with: /\A[a-zA-Z\-. ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}
  validates :employee_last_name, presence: true, format: {with: /\A[a-zA-Z\-. ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}
  validates :employee_email, format: { with: /\A([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)\z/ }, presence: true, uniqueness: true
  validates :employee_phone, presence: true, length: {minimum: 10 }, format: { with: /\A(([\d]{3})[-]*[\d]{3}[-]*[\d]{4})\z/, message: 'Use Format - XXX-XXX-XXXX OR XXXXXXXXXX'}

  rails_admin do
    object_label_method :display_name
  end

  def display_name
    if self.employee_first_name != nil && self.employee_last_name != nil
      self.employee_first_name + ' ' + self.employee_last_name
    end
  end

  def fullname
    "#{employee_first_name} #{employee_last_name}"
  end

  has_paper_trail
end
