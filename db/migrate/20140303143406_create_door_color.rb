class CreateDoorColor < ActiveRecord::Migration
  def change
    create_table :door_color do |t|
      t.string :title
      t.has_attached_file :image
      t.integer :door_id

      t.timestamps
    end
  end
end
