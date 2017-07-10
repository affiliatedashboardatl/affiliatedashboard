class CreateDeveloperCredentials < ActiveRecord::Migration[5.1]
  def change
    create_table :developer_credentials do |t|
      t.string :integration_id
      t.string :title
      t.string :value
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
