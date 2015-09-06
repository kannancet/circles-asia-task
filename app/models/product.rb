class Product < ActiveRecord::Base

   has_many :images, as: :imageable
   belongs_to :product_line
   has_many :general_revenue_ledger_entries, as: :entreable
end
