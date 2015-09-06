class AddFieldToOrderCancelRequestLine < ActiveRecord::Migration
  def change
    add_column :order_cancel_request_lines, :cancel_amount, :float
  end
end
