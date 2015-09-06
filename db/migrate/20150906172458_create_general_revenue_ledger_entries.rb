class CreateGeneralRevenueLedgerEntries < ActiveRecord::Migration
  def change
    create_table :general_revenue_ledger_entries do |t|
      t.integer :product_line_id
      t.integer :product_id
      t.float :debit_amount
      t.float :credit_amount
      t.string :entreable_type
      t.integer :entreable_id

      t.timestamps null: false
    end
  end
end
