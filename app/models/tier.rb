class Tier < ApplicationRecord
  belongs_to :cake_flavor
  belongs_to :frosting_flavor
  belongs_to :shape
  belongs_to :order_line
  has_many :tier_fillings

  # validates :position, numericality: {only_integer: true} # No validation because it's automated.
  validates :tier_size, presence: true, format: {with: /\A[a-zA-Z0-9 ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}


  accepts_nested_attributes_for :tier_fillings

  rails_admin do
    nested do
      configure :order_line do
        hide
      end
      configure :position do
        hide
      end
    end
    create do
      configure :position do
        hide
      end
    end
  end

  rails_admin do
    object_label_method :display_name
  end

  def display_name
      "Order Line " + self.order_line_id.to_s + ' Position ' + self.position.to_s
  end

  # after_initialize do
  #   self.position = 0
  # end


  before_create do
    @sameOrderLineTiers = Tier.where(order_line_id: self.order_line_id)
    puts(@sameOrderLineTiers)
    @maxPosition = @sameOrderLineTiers.maximum("position")
    puts(@maxPosition)
    if !@maxPosition
      puts("nil")
      @maxPosition = 0
    end
    @setPosition = @maxPosition + 1
    puts(@setPosition)
    self.position = @setPosition

    # if OrderLine.exists?(id: self.order_line_id)
  end

  has_paper_trail
end
