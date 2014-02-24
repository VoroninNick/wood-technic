class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.has_attached_file :image
      t.has_attached_file :image_on_main_page
      t.text :short_description
      t.text :description
      t.datetime :begin_promo
      t.datetime :end_promo
      t.string :url
      t.timestamps
    end
  end
end
