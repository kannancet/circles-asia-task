class GeneralRevenueLedgerEntry < ActiveRecord::Base

    belongs_to :entreable, polymorphic: true
    belongs_to :product
    belongs_to :product_line

end
