class OrderDoor < ActionMailer::Base
  default from: "support@voroninstudio.eu"
  default to: 	'nazariy.papizh@gmail.com'

  def order_enter_door(enter_doors)
    @enter_door = enter_doors
    to = []
    FeedbackEmail.all.each do | r |
      to.push(r.email)
    end
    mail(:template_path => 'mail_templates', :template_name => 'order_doors', :subject => "Wood Technic ЗАМОВЛЕННЯ ДВЕРЕЙ", to: to)
  end
end
