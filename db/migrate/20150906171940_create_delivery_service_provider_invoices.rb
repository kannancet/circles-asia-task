class CreateDeliveryServiceProviderInvoices < ActiveRecord::Migration
  def change
    create_table :delivery_service_provider_invoices do |t|
      t.integer :delivery_service_provider_id
      t.integer :order_id
      t.string :invoice_number
      t.datetime :invoice_date
      t.float :invoice_amount
      t.string :status

      t.timestamps null: false
    end
  end
end
