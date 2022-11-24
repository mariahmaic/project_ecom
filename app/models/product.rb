class Product < ActiveRecord::Base
  # attr_accessible :name, :description, :price, :category_id
  belongs_to :category
  # params.require(:category).permit(:name, :description, :price, :category_id)
  validates :name, presence: true
  validates :price, presence: true, numericality: true
  validates :description, presence: true
end
