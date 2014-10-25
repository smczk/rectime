class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.integer :user_id, :null => false
      t.boolean :completed, :default => false

      t.timestamps
    end
  end
end
