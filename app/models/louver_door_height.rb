class LouverDoorHeight < ActiveRecord::Base
  attr_accessible :title, :height, :louver_door_price_id

  rails_admin do
    visible false

    list do
      field :title
      field :height
    end

    edit do
      field :title do
        label 'Назва'
      end
      field :height do
        label 'Висота'
      end
    end

  end
end
