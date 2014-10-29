class AddExtraIdToPoints < ActiveRecord::Migration
  def change
    add_column :points, :extra_id, :string
  end
end
