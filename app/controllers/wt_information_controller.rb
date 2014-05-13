class WtInformationController < ApplicationController
  def who_we
    @page_cont=WhoWeAre.order('updated_at asc').limit(1)
  end
  def news
    @publication = Publication.order('updated_at asc')
  end
  def vacancy
    @page = Vacancy.order('updated_at asc').limit(1)
  end
  def reviews

  end
  def for_partner
    @page = ForPartner.order('updated_at asc').limit(1)
  end
  def installer
    @page = Installer.order('updated_at asc').limit(1)
  end
  def for_buyers
    @page_cont = ForBuyers.order('updated_at asc').limit(1)

  end
  def certificates_and_warranty
    @cert = Certificate.order('updated_at asc')
    @page_cont = CertificatesAndWarranty.order('updated_at asc').limit(1)
  end



end
