class AddUserToSales < ActiveRecord::Migration[5.0]
  def change
    add_reference :sales, :user, foreign_key: true
  end
end
