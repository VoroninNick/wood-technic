class PagesController < ApplicationController
  def promo_one_item
    @promo_show = Promotion.find_by_url(params[:url])
  end

  def news_one_item
    @news_show = Publication.find_by_url(params[:url])
  end

  def d_e_s_i
    @models = ProductModel.order("updated_at asc")
    @d_e_s_i = ProductModel.find_by_url(params[:url]).dveris
    @model = ProductModel.find_by_url(params[:url])
    @characteristic = Harakterystyky.order("updated_at asc").limit(1)
    @ord_ent_door = OrderEnterDoor.new
  end

  def get_image
    door = params[:selected_model_d]
    color = params[:selected_model_d_c]

    query = "select d_i.id from colory_dverej d_i, dveri d where d_i.door_id == d.id  and d.title == '#{door}' and d_i.title == '#{color}'"
    result = ActiveRecord::Base.connection.execute( query )
    @door_image = []
    result.each do |row|
      @door_image.append( ColoryDverej.find( row['id'] ) )
    end
  end

  def testing

  end
end
