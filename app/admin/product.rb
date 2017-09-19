ActiveAdmin.register Product do
  permit_params :product_type_id, :name, :quantity, :width, :height, :thickness
end
