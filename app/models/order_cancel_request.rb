class OrderCancelRequest < ActiveRecord::Base

     has_many :order_cancel_request_lines
     belongs_to :customer, class_name: "User", foreign_key: "customer_id"
     belongs_to :order
     has_many :general_revenue_ledger_entries, as: :entreable
end
