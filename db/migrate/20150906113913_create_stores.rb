class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :domain
      t.string :url
      t.string :default_currency
      t.string :default_language

      t.timestamps null: false
    end
  end
end
