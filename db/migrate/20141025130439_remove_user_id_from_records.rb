class RemoveUserIdFromRecords < ActiveRecord::Migration
  def change
    remove_column :records, :user_id, :integer
  end
end
