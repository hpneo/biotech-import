class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :product_type, foreign_key: true, null: false
      t.string :name, null: false
      t.integer :quantity, null: false
      t.decimal :width
      t.decimal :height
      t.decimal :thickness

      t.timestamps
    end
  end
end
