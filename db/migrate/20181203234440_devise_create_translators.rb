# frozen_string_literal: true

class DeviseCreateTranslators < ActiveRecord::Migration[5.2]
  def change
    create_table :translators do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :first_name
      t.string :last_name
      t.string :avatar
      t.string :adress
      t.string :zip_code
      t.string :city
      t.string :country
      t.string :phone_number
      t.string :fax_number
      t.string :fix_number
      t.boolean :is_translator_valide, default: false

      t.timestamps null: false
    end

    add_index :translators, :email,                unique: true
    add_index :translators, :reset_password_token, unique: true

    add_index :translators, :first_name
    add_index :translators, :last_name
    add_index :translators, :phone_number

    # add_index :translators, :confirmation_token,   unique: true
    # add_index :translators, :unlock_token,         unique: true
  end
end
