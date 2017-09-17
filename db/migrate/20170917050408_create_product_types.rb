class CreateProductTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :product_types do |t|
      t.string :name
      t.string :description
      t.boolean :has_dimensions, default: false

      t.timestamps
    end
  end
end
