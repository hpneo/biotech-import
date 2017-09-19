class ChangePrecisionInProductDimensions < ActiveRecord::Migration[5.0]
  def change
    change_column(:products, :width, :decimal, { precision: 5, scale: 2 })
    change_column(:products, :height, :decimal, { precision: 5, scale: 2 })
    change_column(:products, :thickness, :decimal, { precision: 5, scale: 2 })
  end
end
