class OrderDoorLouver < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :time_from, :time_to, :message, :color, :width, :height, :count, :price
end
