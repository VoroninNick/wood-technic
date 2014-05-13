class CallOrder < ActionMailer::Base
  default from: "support@voroninstudio.eu"
  default to: 	'nazariy.papizh@gmail.com'

  def order_call(call_order)
    @call_order = call_order
    to = []
    to = FeedbackEmail.email
    mail(:template_path => 'mail_templates', :template_name => 'call_order', :subject => "ЗАМОВЛЕННЯ ДЗВІНКА", to: to)
  end
end
