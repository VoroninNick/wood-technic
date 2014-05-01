class CreateWhoWeAres < ActiveRecord::Migration
  def change
    create_table :who_we_ares do |t|
      t.string :title
      t.text :page_content

      t.timestamps
    end
  end
end
