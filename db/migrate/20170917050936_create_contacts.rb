class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :fullname, null: false
      t.string :phone, null: false
      t.string :address, null: false

      t.timestamps
    end
  end
end
