class LouverDoorPrice < ActiveRecord::Base
  attr_accessible :title

  has_many :louver_door_widths
  accepts_nested_attributes_for :louver_door_widths, allow_destroy: true
  attr_accessible :louver_door_widths_attributes

  validates :title, :presence => true
  validates :louver_door_widths, :presence => true

  rails_admin do
    parent LouvreDoors
    label 'Ціна'
    label_plural 'Ціна'

    list do
      field :title
      field :louver_door_widths
    end

    edit do
      field :title do
        label 'Назва'
      end

      field :louver_door_widths do
        label 'Ширина / Висота'
      end

    end

  end
end
