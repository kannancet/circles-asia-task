class ShoppingCart < ActiveRecord::Base

   belongs_to :customer, class_name: "User", foreign_key: "customer_id"
   has_many :orders
   has_many :lne_items
end
