class CreateForPartners < ActiveRecord::Migration
  def change
    create_table :for_partners do |t|
      t.string :title
      t.text :page_content

      t.timestamps
    end
  end
end
