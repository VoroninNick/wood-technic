class MainController < ApplicationController
  def index
    @banner = MainBanner.order('index_sorting asc')
    @promotion = Promotion.order('updated_at asc')
    @carousel = CarouselDoorMainPage.order('index_sort asc')

  end

  def production

  end

  def promotion
    @promotion = Promotion.order('updated_at asc')
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

  def call_order
    CallOrder.order_call(params[:call_order]).deliver


  #  call_order =params[:call_order]
  #
  #  if request.post?
  #    @data = {
  #        :name => params[:name],
  #        :email => params[:email],
  #        :phone => params[:phone],
  #        :time_from => params[:time_from],
  #        :time_to => params[:time_to],
  #        :message => params[:message]
  #    }
  #
  #    if MessageMailer.message(@data).deliver
  #      redirect('/contact', :flash => 'Thank you for the message. I will get back to you as soon as possible')
  #    else
  #      redirect('/contact', :flash => 'Oops! Something went wrong. I will look into it. Until it\'s fixed you can email me at email@domain.com')
  #    end
  #
  #  else
  #    redirect('/contact', :flash => 'Please fill out the contact form to get in touch.')
  #  end
  #
  end

end
