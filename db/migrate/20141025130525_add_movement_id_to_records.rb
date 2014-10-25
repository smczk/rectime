class AddMovementIdToRecords < ActiveRecord::Migration
  def change
    add_column :records, :movement_id, :integer
  end
end
