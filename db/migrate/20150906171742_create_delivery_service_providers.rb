class CreateDeliveryServiceProviders < ActiveRecord::Migration
  def change
    create_table :delivery_service_providers do |t|
      t.string :name
      t.integer :contact
      t.string :email

      t.timestamps null: false
    end
  end
end
