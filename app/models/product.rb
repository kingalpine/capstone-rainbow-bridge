class Product < ApplicationRecord
    has_many :order_lines

    validates :product_name, presence: true, format: {with: /\A[a-zA-Z0-9.\- ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}
    validates :product_description, presence: true

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.product_name
    end

    has_paper_trail
end
