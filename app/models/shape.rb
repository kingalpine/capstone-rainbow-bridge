class Shape < ApplicationRecord
  validates :Shape_Name, presence: true
  has_many :Tier
