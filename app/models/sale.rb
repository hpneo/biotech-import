class Sale < ApplicationRecord
  belongs_to :product
  belongs_to :contact
  belongs_to :user

  after_create :update_product_quantity

  def update_product_quantity
    product = self.product
    product.quantity = product.quantity - self.quantity
    product.save
  end
end
