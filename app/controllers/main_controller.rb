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
    @contact_new_form = ContactForm.new
  end
  def send_message
    ContactUs.new_message(params[:contact_form]).deliver
    @was_sent = true
    @contact_new_form = ContactForm.new
    render action: :contacts
  end

end
