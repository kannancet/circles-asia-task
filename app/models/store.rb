class Store < ActiveRecord::Base

   has_many :product_lines
   has_one :image, as: :imageable
end
