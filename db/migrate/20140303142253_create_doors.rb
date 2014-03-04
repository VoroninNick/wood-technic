class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.string :title
      t.has_attached_file :image
      t.text :description
      t.string :url
      t.integer :product_model_id
      t.text :meta_title
      t.text :meta_description
      t.text :meta_keyword

      t.timestamps
    end
  end
end
