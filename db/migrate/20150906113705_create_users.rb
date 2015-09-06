class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.text :encrypted_password
      t.text :password_salt
      t.string :remember_token
      t.string :reset_password_token
      t.string :perishable_token
      t.integer :sign_in_count
      t.integer :failed_attempts
      t.datetime :last_request_at
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string :current_sign_in_ip
      t.string :last_sign_in_ip
      t.datetime :deleted_at
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.datetime :remember_created_at
      t.string :authentication_token

      t.timestamps null: false
    end
  end
end
