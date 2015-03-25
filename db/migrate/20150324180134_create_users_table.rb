class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users_tables do |t|
     t.string :name, null: false
     t.string :email_address, null: false
     t.string :password, null: false
      end
  end
end
