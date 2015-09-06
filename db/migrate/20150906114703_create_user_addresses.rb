class CreateUserAddresses < ActiveRecord::Migration
  def change
    create_table :user_addresses do |t|
      t.string :firstname
      t.string :lastname
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :country
      t.integer :zipcode
      t.integer :contact_number
      t.string :type
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
