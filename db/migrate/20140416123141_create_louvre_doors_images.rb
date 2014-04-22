class CreateLouvreDoorsImages < ActiveRecord::Migration
  def change
    create_table :louvre_doors_images do |t|
      t.integer :louvre_doors_id
      t.string :title
      t.has_attached_file :image

      t.timestamps
    end
  end
end
