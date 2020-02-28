class Tier < ApplicationRecord
  belongs_to :Cake_Flavor
  belongs_to :Frosting_Flavor
  belongs_to :Shape
  belongs_to :Order_Line
end
