class CreateOrderCancelRequestLines < ActiveRecord::Migration
  def change
    create_table :order_cancel_request_lines do |t|
      t.integer :line_item_id
      t.integer :order_cancel_request_id
      t.string :state

      t.timestamps null: false
    end
  end
end
