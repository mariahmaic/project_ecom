ActiveAdmin.register User do

  permit_params :username, :password, :email

end
