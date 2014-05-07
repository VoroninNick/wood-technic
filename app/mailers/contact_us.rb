class ContactUs < ActionMailer::Base

  default from: "support@voroninstudio.eu"
  default to: 	'nazariy.papizh@gmail.com'

  def new_message(message)
    @message = message
    to = []
    FeedbackEmail.all.each do | r |
      to.push(r.email)
    end
    #default to: to
    mail(:template_path => 'mail_templates', :template_name => 'feedback', :subject => "ЗВОРОТНІЙ ЗВ’ЯЗОК", to: to)
  end

end

