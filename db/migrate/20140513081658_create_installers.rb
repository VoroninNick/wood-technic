class CreateInstallers < ActiveRecord::Migration
  def change
    create_table :installers do |t|
      t.string :title
      t.text :page_content

      t.timestamps
    end
  end
end
