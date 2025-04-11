class AddUserToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :user, :string
  end
end
