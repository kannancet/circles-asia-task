class Order < ActiveRecord::Base

    belongs_to :customer, class_name: "User", foreign_key: "customer_id"
    has_one :billing_address, class_name: "UserAddress", foreign_key: "billing_address_id"
    has_one :shipping_address, class_name: "UserAddress", foreign_key: "shipping_address_id"
    belongs_to :delivery_service_provider
    has_one :delivery_service_provider_invoice
    has_many :general_revenue_ledger_entries, as: :entreable
end
