class LouverDoorWidth < ActiveRecord::Base
  attr_accessible :title, :width, :louver_door_price_id
  belongs_to :louver_door_price

  validates :title, :presence => true
  validates :width, :presence => true

  rails_admin do
    # visible false
    label 'Одиницю'
    label_plural 'Одиниці'

    list do
      field :title
      field :height
    end

    edit do
      field :title do
        label 'Назва'
      end
      field :width do
        label 'Ціна'
      end
    end

  end
end
