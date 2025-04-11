class AddAddressToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :address_id, :integer
  end
end
