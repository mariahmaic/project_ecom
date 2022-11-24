class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :firstName
      t.string :lastName
      t.string :address
      t.string :postalCode
      t.string :city
      t.string :province

      t.timestamps
    end
  end
end
