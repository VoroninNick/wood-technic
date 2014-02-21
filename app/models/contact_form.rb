class ContactForm < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :message
end
