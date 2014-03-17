class CreateOrderEnterDoors < ActiveRecord::Migration
  def change
    create_table :order_enter_doors do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.datetime :time_from
      t.datetime :time_to
      t.text :message
      t.string :model
      t.string :color
      t.string :count
      t.string :side_opening
      t.string :furniture

      t.timestamps
    end
  end
end
