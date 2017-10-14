class SaleSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :price, :product, :contact, :user
end
