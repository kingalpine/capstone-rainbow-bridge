class FrostingFlavor < ApplicationRecord
    has_many :tiers

    validates :frosting_name, presence: true, format: {with: /\A[a-zA-Z0-9\-' ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}

    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.frosting_name
    end

    has_paper_trail
end
