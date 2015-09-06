class LineItem < ActiveRecord::Base

     belongs_to :shopping_cart
     belongs_to :order
     belongs_to :variant
end
