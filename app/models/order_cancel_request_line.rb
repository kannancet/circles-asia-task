class OrderCancelRequestLine < ActiveRecord::Base

    belongs_to :line_item
    belongs_to :order_cancel_request
end
