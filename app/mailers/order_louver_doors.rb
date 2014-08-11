class OrderLouverDoors < ActionMailer::Base
  default from: "support@voroninstudio.eu"
  default to: 	'nazariy.papizh@gmail.com'

  def order_louver_doors(louver_doors)
    @louver_doors = louver_doors
    to = []
    FeedbackEmail.all.each do | r |
      to.push(r.email)
    end
    mail(:template_path => 'mail_templates', :template_name => 'order_louver_doors', :subject => "Wood Technic ЗАМОВЛЕННЯ ЖАЛЮЗІЙНИХ ДВЕРЦЯТ")
  end
end
