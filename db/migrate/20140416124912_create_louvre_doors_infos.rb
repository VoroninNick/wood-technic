class CreateLouvreDoorsInfos < ActiveRecord::Migration
  def change
    create_table :louvre_doors_infos do |t|
      t.integer :louvre_doors_id
      t.text :operation
      t.text :specifications
      t.text :warranty

      t.timestamps
    end
  end
end
