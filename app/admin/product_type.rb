ActiveAdmin.register ProductType do
  permit_params :name, :description, :has_dimensions
end
