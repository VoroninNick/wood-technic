class CreateProductModels < ActiveRecord::Migration
  def change
    create_table :product_models do |t|
      t.string :title
      t.has_attached_file :image
      t.string :url

      t.timestamps
    end
  end
end
