ActiveAdmin.register Sale do
  permit_params :product_id, :quantity, :price
end
