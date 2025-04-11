class AddLastLoggedInToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :last_logged_in, :datetime
  end
end
