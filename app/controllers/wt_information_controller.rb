class WtInformationController < ApplicationController
  def who_we

  end
  def news
    @cert = Certificate.order('updated_at asc')
  end
end
