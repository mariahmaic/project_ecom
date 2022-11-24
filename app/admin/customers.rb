ActiveAdmin.register Customer do

  permit_params :firstName, :lastName, :address, :postalCode, :city, :province

end
