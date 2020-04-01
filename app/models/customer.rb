class Customer < ApplicationRecord
  belongs_to :customer_status
  has_many :orders
  validates :customer_first_name, presence: true, format: { with: /\A[-a-zA-Z. ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}
  validates :customer_last_name, presence: true, format: {with: /\A[-a-zA-Z. ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}
  validates :customer_email, format: { with: /\A([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)\z/ }, presence: true, uniqueness: true
  validates :customer_phone, length: {minimum: 10 }, format: { with: /\A(([\d]{3})[-]*[\d]{3}[-]*[\d]{4})\z/, message: 'Use Format - XXX-XXX-XXXX OR XXXXXXXXXX'}, allow_blank: true
  validates :customer_street_address, format: { with: /\A[a-zA-Z0-9.,\- ]+\z/, message: 'Only Alphanumerical and Numbers Allowed'}
  validates :customer_city, format:{ with: /\A[a-zA-Z\- ]+\z/, message: 'Only Alphanumerical characters'}
  validates :customer_state, format:{with: /\A[\w]+\z/}, length: {is:2}
  validates :customer_zip_code, length: {is:5 }, allow_blank: true, numericality: { only_integer:true }
   Date
  accepts_nested_attributes_for :orders

  rails_admin do
    object_label_method :display_name
  end

  def display_name
    if self.customer_first_name != nil && self.customer_last_name != nil
      self.customer_first_name + ' ' + self.customer_last_name
    end
  end

  def full_name
    "#{customer_first_name} #{customer_last_name}"
  end

  has_paper_trail
end
