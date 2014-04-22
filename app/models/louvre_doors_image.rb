class LouvreDoorsImage < ActiveRecord::Base
  attr_accessible :louvre_doors_id, :title, :image

  has_attached_file :image, styles:{ small: "150x150#", large: '505x741#'
  },url:'/assets/images/louvre_doors/images/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  belongs_to :louvre_doors

  rails_admin do
    parent LouvreDoors
    weight -1
    label 'Зображення'
    label_plural 'Зображення'

    list do

      field :title
      field :image
    end

    edit do
      field :title
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення '
      end
    end
  end
end
