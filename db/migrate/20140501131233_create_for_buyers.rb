class CreateForBuyers < ActiveRecord::Migration
  def change
    create_table :for_buyers do |t|
      t.string :title
      t.text :page_content

      t.timestamps
    end
  end
end
