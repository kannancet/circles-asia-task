class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :sku
      t.float :cost_price
      t.datetime :deleted_at
      t.text :variant_attributes
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
