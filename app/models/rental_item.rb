class RentalItem < ApplicationRecord
    has_many :rental_lines

    validates :rental_item_name, presence: true
    validates :rental_item_cost,  allow_blank: true, format: {with: /\$?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(\.[0-9][0-9])?+/, message: 'Format: $XXX.XX'}
    rails_admin do
        object_label_method :display_name
    end

    def display_name
        self.rental_item_name
    end

    has_paper_trail
end
