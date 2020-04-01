class EmployeeStatus < ApplicationRecord
    has_many :employees

    validates :employee_status_name, presence: true, format: {with: /\A[a-zA-Z ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.employee_status_name
    end

    has_paper_trail
end
