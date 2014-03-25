class CreateCarouselDoorMainPages < ActiveRecord::Migration
  def change
    create_table :carousel_door_main_pages do |t|
      t.string :title
      t.has_attached_file :image
      t.string :link
      t.integer :index_sort

      t.timestamps
    end
  end
end
