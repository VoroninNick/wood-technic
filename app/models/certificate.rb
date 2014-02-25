class Certificate < ActiveRecord::Base
  attr_accessible :image, :alt, :title, :index

  has_attached_file :image, styles:{ avatar: "375x427>", large: "750x855>"
  },url:'/assets/images/certificate/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  rails_admin do
    navigation_label 'Сертифікати'
    label 'Сертифікат'
    label_plural 'Сертифікати'

    list do
      field :image
      field :title
      field :alt
      field :index
    end

    edit do
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення 750 x 855'
      end
      field :title
      field :alt
      field :index
    end
  end
end
