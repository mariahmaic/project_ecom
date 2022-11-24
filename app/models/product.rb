class Product < ApplicationRecord
  # belongs_to :order

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
