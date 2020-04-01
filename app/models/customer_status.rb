class CustomerStatus < ApplicationRecord
    has_many :customers

    validates :customer_status_name, presence: true, format: {with: /\A[a-zA-Z ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.customer_status_name
    end

    has_paper_trail
end
