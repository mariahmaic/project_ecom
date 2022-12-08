class Product < ActiveRecord::Base
  # attr_accessible :name, :description, :price, :category_id
  belongs_to :category
  has_many :orders

  has_one_attached :image
  # params.require(:category).permit(:name, :description, :price, :category_id)
  validates :name, presence: true
  validates :price, presence: true, numericality: true
  validates :description, presence: true
end
