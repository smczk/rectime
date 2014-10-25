class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :user_id
      t.integer :point_id
      t.text :comment

      t.timestamps
    end
  end
end
