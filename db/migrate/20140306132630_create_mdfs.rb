class CreateMdfs < ActiveRecord::Migration
  def change
    create_table :mdfs do |t|
      t.string :title
      t.string :url
      t.has_attached_file :image
      t.string :size

      t.timestamps
    end
  end
end
