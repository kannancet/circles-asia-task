class AddFieldToOrderCancelRequest < ActiveRecord::Migration
  def change
    add_column :order_cancel_requests, :total_cancel_amount, :float
  end
end
