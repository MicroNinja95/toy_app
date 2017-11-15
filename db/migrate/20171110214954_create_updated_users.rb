class CreateUpdatedUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :updated_users do |t|
      t.text :user_name
      t.text :user_email

      t.timestamps
    end
  end
end
