class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.references :product, foreign_key: true, null: false
      t.integer :quantity, null: false
      t.decimal :price, precision: 5, scale: 2, null: false

      t.timestamps
    end
  end
end
