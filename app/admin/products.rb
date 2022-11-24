ActiveAdmin.register Product do

  permit_params :name, :price, :description, :category_id

end
