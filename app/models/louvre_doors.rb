class LouvreDoors < ActiveRecord::Base
  attr_accessible :title, :order, :image, :description

  has_attached_file :image, styles:{ small: "150x150#", large: '505x741>'
  },url:'/assets/images/louvre_doors/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  has_many :louvre_doors_images
  has_one :louvre_doors_info

  accepts_nested_attributes_for :louvre_doors_images, allow_destroy: true
  attr_accessible :louvre_doors_images_attributes

  accepts_nested_attributes_for :louvre_doors_info, allow_destroy: true
  attr_accessible :louvre_doors_info_attributes

  rails_admin do
    navigation_label 'Продукція'
    label 'Жалюзійні дверцята'
    label_plural 'Жалюзійні дверцята'
    list do

      field :title
      field :description
    end

    edit do
      field :title
      field :description, :ck_editor do

      end
      field :louvre_doors_images do

      end
      field :louvre_doors_info do

      end
    end
  end
end
