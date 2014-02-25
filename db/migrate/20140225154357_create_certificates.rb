class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.has_attached_file :image
      t.string :alt
      t.string :title
      t.integer :index

      t.timestamps
    end
  end
end
