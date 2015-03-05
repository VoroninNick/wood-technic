class AddIcoAndSlugToColoryDeverej < ActiveRecord::Migration
  def change
    change_table :colory_dverejs do |t|
      t.has_attached_file :ico
      t.string :slug
    end
  end
end
