ActiveAdmin.register Sale do
  permit_params :product_id, :contact_id, :quantity, :price
end
