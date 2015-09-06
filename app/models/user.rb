class User < ActiveRecord::Base

   has_many :roles, through: :roles_users
   has_many :orders
   has_many :order_cancel_requests
end
