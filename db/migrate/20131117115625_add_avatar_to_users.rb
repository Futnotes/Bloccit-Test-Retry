class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avavatar, :string
  end
end
