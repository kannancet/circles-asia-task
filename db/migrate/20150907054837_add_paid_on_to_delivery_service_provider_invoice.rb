class AddPaidOnToDeliveryServiceProviderInvoice < ActiveRecord::Migration
  def change
    add_column :delivery_service_provider_invoices, :paid_on, :datetime
  end
end
