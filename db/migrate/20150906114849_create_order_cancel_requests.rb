class CreateOrderCancelRequests < ActiveRecord::Migration
  def change
    create_table :order_cancel_requests do |t|
      t.integer :order_id
      t.integer :customer_id
      t.string :state

      t.timestamps null: false
    end
  end
end
