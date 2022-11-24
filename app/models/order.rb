class Order < ApplicationRecord
  # belongs_to :customer

  validates :total, presence: true
end
