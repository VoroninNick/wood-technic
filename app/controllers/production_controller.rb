class ProductionController < ApplicationController
  def d_e
    @modal = ProductModel.order("updated_at asc")
  end

 def d_v

 end

  def mdf
    @mdf =Mdf.order("updated_at asc")

  end
end