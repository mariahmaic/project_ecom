class Order < ApplicationRecord
  # belongs_to :customer
  has_many :products

  validates :total, presence: true, numericality: true
end
