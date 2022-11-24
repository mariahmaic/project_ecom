class Customer < ApplicationRecord
  # belongs_to :order

  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :address, presence: true
  validates :postalCode, presence: true
  validates :city, presence: true
  validates :province, presence: true
end
