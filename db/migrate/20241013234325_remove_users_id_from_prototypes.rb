class RemoveUsersIdFromPrototypes < ActiveRecord::Migration[7.0]
  def change
    remove_column :prototypes, :users_id, :bigint
  end
end