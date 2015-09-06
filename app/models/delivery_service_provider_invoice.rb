class DeliveryServiceProviderInvoice < ActiveRecord::Base

  belongs_to :delivery_service_provider
  belongs_to :order
end
