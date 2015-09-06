class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :number
      t.float :item_total
      t.float :delivery_total
      t.float :net_total
      t.integer :item_count
      t.integer :billing_address_id
      t.integer :shipping_address_id
      t.string :state
      t.datetime :placed_at
      t.datetime :shipped_at
      t.datetime :delivered_at
      t.datetime :cancel_requested_at
      t.datetime :cancel_approved_at

      t.timestamps null: false
    end
  end
end
