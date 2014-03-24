class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  helper_method :get_order

  def get_order
    @call_order = Call_order.new(params[:call_order])
    return @call_order
  end

  #helper_method :callorder
  #
  #def callorder
  #  @call = Call_order.new
  #  return @call
  #end
  #helper_method callorder
  #
  #def callorder
  #  @call_order = CallOrder.new
  #  return @call_order
  #end

  #def send_call_order_message
  #  CallOrder.new_message(params[:call_order]).deliver
  #  #@was_sent = true
  #  @call_order = ContactForm.new
  #  #render action: :contacts
  #end
  helper_method :call_order_new

  def call_order_new
    @call_order = Call_order.new
    return @call_order
  end

  helper_method :call_order_create

  def call_order_create
    @call_order = Call_order.new(params[:call_order])
    return @call_order
  end
end
