class AddContactToSales < ActiveRecord::Migration[5.0]
  def change
    add_reference :sales, :contact, foreign_key: true
  end
end
