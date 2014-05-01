class CreateLouverDoorHeights < ActiveRecord::Migration
  def change
    create_table :louver_door_heights do |t|
      t.string :title
      t.integer :height
      t.integer :louver_door_price_id

      t.timestamps
    end
  end
end
