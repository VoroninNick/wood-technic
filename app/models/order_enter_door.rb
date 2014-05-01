class OrderEnterDoor < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :time_from, :time_to, :message, :model, :color, :count, :side_opening, :furniture
  rails_admin do
    visible false

  end
end
