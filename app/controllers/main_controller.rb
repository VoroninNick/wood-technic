class MainController < ApplicationController
  def index
    @banner = MainBanner.order('index_sorting asc')

  end

  def production

  end

  def promotion

  end

  def information

  end

  def contacts

  end

end
