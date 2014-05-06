class CallOrder < ActionMailer::Base
  default from: "support@voroninstudio.eu"
  default to: 	'nazariy.papizh@gmail.com'

  def order_call(call_order)
    @callorder = call_order
    to = []
    FeedbackEmail.all.each do | r |
      to.push(r.email)
    end
    #default to: to
    mail(:template_path => 'mail_templates', :template_name => 'call_order', :subject => "ЗАМОВЛЕННЯ ДЗВІНКА", to: to)
  end
end
