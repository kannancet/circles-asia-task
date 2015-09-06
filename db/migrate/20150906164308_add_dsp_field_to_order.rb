class AddDspFieldToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :delivery_service_provider_id, :integer
  end
end
