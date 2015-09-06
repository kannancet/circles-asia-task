class DeliveryServiceProvider < ActiveRecord::Base
	
	has_many :orders
end
