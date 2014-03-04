class PagesController < ApplicationController
  def promo_one_item
    @promo_show = Promotion.find_by_url(params[:url])
  end

  def news_one_item
    @news_show = Publication.find_by_url(params[:url])
  end

  def d_e_s_i
    @d_e_s_i = ProductModel.find_by_url(params[:url]).dveris
    @model = ProductModel.find_by_url(params[:url])
    @characteristic = Harakterystyky.order("updated_at asc").limit(1)
  end
end
