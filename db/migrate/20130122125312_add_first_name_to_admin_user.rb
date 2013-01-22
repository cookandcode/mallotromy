class AddFirstNameToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :first_name, :string
  end
end
