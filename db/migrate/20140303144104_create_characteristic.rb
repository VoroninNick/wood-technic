class CreateCharacteristic < ActiveRecord::Migration
  def change
    create_table :characteristic do |t|
      t.integer :door_id
      t.text :operation
      t.text :specifications
      t.text :warranty

      t.timestamps
    end
  end
end
