class RenameUsersIdToUserIdInPrototypes < ActiveRecord::Migration[7.0]
  def change
    rename_column :prototypes, :users_id, :user_id
  end
end