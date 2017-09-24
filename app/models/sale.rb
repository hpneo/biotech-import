class Sale < ApplicationRecord
  belongs_to :product
  belongs_to :contact

  after_create :update_product_quantity

  def update_product_quantity
    product = self.product
    product.quantity = product.quantity - sale.quantity
    product.save
  end
end
