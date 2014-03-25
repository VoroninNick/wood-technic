class CarouselDoorMainPage < ActiveRecord::Base
  attr_accessible :title, :image, :link, :index_sort

  has_attached_file :image, url:'/assets/images/doors/carousel/door:id/image_:style.:extension',
                    path:':rails_root/public:url'

  rails_admin do
    navigation_label 'Головна сторінка'
    label 'Карусель'
    label_plural 'Карусель слайди'

    list do
      field :title
      field :index_sort
      field :image
      field :link
    end
    edit do
      field :title
      field :index_sort
      field :image, :paperclip do

      end
      field :link
    end
  end
end
