class WtInformationController < ApplicationController
  def who_we

  end
  def news
    @publication = Publication.order('updated_at asc')
  end
  def for_buyers

  end
  def certificates_and_warranty
    @cert = Certificate.order('updated_at asc')
  end
end
