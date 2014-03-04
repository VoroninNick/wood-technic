class Harakterystyky < ActiveRecord::Base
  attr_accessible :door_id, :operation, :specifications, :warranty

  belongs_to :dveri

  rails_admin do
    #visible false
    navigation_label 'Продукція'
    label 'Характеристика'
    label_plural 'Характеристики'

    list do
      field :operation
      field :specifications
      field :warranty
    end

    edit do
      field :operation, :ck_editor do
      end
      field :specifications, :ck_editor do
      end
      field :warranty, :ck_editor do
      end
    end
  end
end
