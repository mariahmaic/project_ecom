class Category < ApplicationRecord
  # attr_accessible :name, :description
  has_many :products
  # params.require(:product).permit(:name, :description)
end
