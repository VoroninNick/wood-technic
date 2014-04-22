class LouvreDoorsInfo < ActiveRecord::Base
  attr_accessible :louvre_doors_id, :operation, :specifications, :warranty

  belongs_to :louvre_doors

  rails_admin do
    parent LouvreDoors
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
