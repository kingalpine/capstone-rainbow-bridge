class OrderType < ApplicationRecord
    has_many :orders

    validates :order_description, presence: true, format: {with: /\A[a-zA-Z ]+\z/, message: 'Only Letters Allowed'}

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.order_description
    end

    has_paper_trail
end
