class AddEncryptedValueToDeveloperCredentials < ActiveRecord::Migration[5.1]
  def change
  	add_column :developer_credentials, :encrypted_value, :string
  	add_column :developer_credentials, :encrypted_value_iv, :string
  end
end
