class CreateCallOrders < ActiveRecord::Migration
  def change
    create_table :call_orders do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.datetime :time_from
      t.datetime :time_to
      t.text :message

    end
  end
end
