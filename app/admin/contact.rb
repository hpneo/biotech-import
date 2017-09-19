ActiveAdmin.register Contact do
  permit_params :fullname, :phone, :address
end
