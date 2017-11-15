class CreateNames < ActiveRecord::Migration[5.1]
  def change
    create_table :names do |t|
      t.text :user_name
      t.text :user_email

      t.timestamps
    end
  end
end
