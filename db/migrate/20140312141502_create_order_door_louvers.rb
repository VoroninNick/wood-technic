class CreateOrderDoorLouvers < ActiveRecord::Migration
  def change
    create_table :order_door_louvers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.datetime :time_from
      t.datetime :time_to
      t.text :message
      t.string :color
      t.string :width
      t.string :height
      t.string :count
      t.string :price

      t.timestamps
    end
  end
end
