class PagesController < ApplicationController
  def promo_one_item
    @promo_show = Promotion.find_by_url(params[:url])
  end
end
