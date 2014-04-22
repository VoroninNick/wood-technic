class CreateLouvreDoors < ActiveRecord::Migration
  def change
    create_table :louvre_doors do |t|
      t.string :title
      t.integer :order
      t.has_attached_file :image
      t.text :description

      t.timestamps
    end
  end
end
