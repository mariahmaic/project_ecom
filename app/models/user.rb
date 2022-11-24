class User < ApplicationRecord
  # belongs_to :order

  validates :username, presence: true
  validates :password, presence: true
  validates :email, presence: true
end
