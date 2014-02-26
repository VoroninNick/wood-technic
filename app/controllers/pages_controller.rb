class PagesController < ApplicationController
  def promo_one_item
    @promo_show = Promotion.find_by_url(params[:url])
  end

  def news_one_item
    @news_show = Publication.find_by_url(params[:url])
  end
end
