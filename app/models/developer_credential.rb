class DeveloperCredential < ApplicationRecord
  belongs_to :user

  attr_encrypted :value, key: Rails.application.secrets.attr_encrypted_key

end
