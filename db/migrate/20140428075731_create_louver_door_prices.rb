class CreateLouverDoorPrices < ActiveRecord::Migration
  def change
    create_table :louver_door_prices do |t|
      t.string :title

      t.timestamps
    end
  end
end
