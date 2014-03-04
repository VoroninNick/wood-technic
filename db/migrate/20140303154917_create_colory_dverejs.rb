class CreateColoryDverejs < ActiveRecord::Migration
  def change
    create_table :colory_dverejs do |t|
      t.string :title
      t.has_attached_file :image
      t.integer :dveri_id

      t.timestamps
    end
  end
end
