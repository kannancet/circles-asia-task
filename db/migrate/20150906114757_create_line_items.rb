class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :order_id
      t.integer :shopping_cart_id
      t.integer :variant_id
      t.float :cost_price
      t.integer :quantity
      t.float :total

      t.timestamps null: false
    end
  end
end
