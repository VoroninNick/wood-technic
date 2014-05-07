class MainController < ApplicationController
  def index
    @banner = MainBanner.order('index_sorting asc')
    @promotion = Promotion.order('updated_at asc')
    @carousel = CarouselDoorMainPage.order('index_sort asc')

  end

  def production

  end

  def promotion
    @promotion = Promotion.order('updated_at asc')
  end

  def information

  end

  def feedback
    ContactUs.new_message(params[:feedback]).deliver
  end


  def call_order
    CallOrder.order_call(params[:call_order]).deliver
  end

  def order_louver_doors
     OrderLouverDoors.order_louver_doors(params[:louver_doors]).deliver
  end

  def order_enter_door
      OrderDoor.order_enter_door(params[:enter_doors]).deliver
  end
end
