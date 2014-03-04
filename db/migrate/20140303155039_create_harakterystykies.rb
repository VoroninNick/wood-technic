class CreateHarakterystykies < ActiveRecord::Migration
  def change
    create_table :harakterystykies do |t|
      t.integer :dveri_id
      t.text :operation
      t.text :specifications
      t.text :warranty

      t.timestamps
    end
  end
end
