class CakeFlavor < ApplicationRecord
    has_many :tiers

    validates :flavor_name, presence: true, format: {with: /\A[a-zA-Z ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.flavor_name
    end

    has_paper_trail
end
