class CreateLouverDoorWidths < ActiveRecord::Migration
  def change
    create_table :louver_door_widths do |t|
      t.string :title
      t.integer :width
      t.integer :louver_door_price_id

      t.timestamps
    end
  end
end
