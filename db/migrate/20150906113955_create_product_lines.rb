class CreateProductLines < ActiveRecord::Migration
  def change
    create_table :product_lines do |t|
      t.string :name
      t.integer :position
      t.integer :store_id

      t.timestamps null: false
    end
  end
end
