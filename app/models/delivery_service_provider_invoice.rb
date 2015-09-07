class DeliveryServiceProviderInvoice < ActiveRecord::Base

  belongs_to :delivery_service_provider
  belongs_to :order
  has_one :general_revenue_ledger_entry, as: :entreable
end
