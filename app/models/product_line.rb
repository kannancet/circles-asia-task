class ProductLine < ActiveRecord::Base

   belongs_to :store
   has_one :image, as: :imageable
   has_many :products
   has_many :general_revenue_ledger_entries, as: :entreable
end
