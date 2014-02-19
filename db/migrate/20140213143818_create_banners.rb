class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.text :title
      t.has_attached_file :back_image
      t.text :description
      t.string :ulr_to_content
      t.integer :index_sorting

      t.timestamps
    end
  end
end
