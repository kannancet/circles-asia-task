class CreateShoppingCarts < ActiveRecord::Migration
  def change
    create_table :shopping_carts do |t|
      t.integer :customer_id
      t.integer :current_order_id
      t.string :state
      t.datetime :last_used_at

      t.timestamps null: false
    end
  end
end
