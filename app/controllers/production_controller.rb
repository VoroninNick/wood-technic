class ProductionController < ApplicationController
  def d_e
    @modal = ProductModel.order("updated_at asc")
  end

 def d_v
   @order_door_louver = OrderDoorLouver.new
   @louver_door = LouvreDoors.all
 end

  def mdf
    @mdf =Mdf.order("updated_at asc")

  end
end