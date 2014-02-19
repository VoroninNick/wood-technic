class MainBanner < ActiveRecord::Base
  attr_accessible :title, :back_image, :description, :ulr_to_content, :index_sorting

  has_attached_file :back_image
  #has_attached_file :back_image, styles:{
  #    large: "1820x900>"
  #},url:'/assets/images/main_banner/:id/image_:style.:extension',
  #                  path:':rails_root/public:url'

  rails_admin do
    navigation_label 'Головний банер'
    label 'Слайд'
    label_plural 'Слайди'

    list do
      field :title
      field :index_sorting
      field :back_image
      field :description
    end
    edit do
      field :title do
        label ''
        help ''
      end
      field :index_sorting do
        label ''
        help ''
      end
      field :back_image, :paperclip do
        label 'Фонове зображення'
        help 'Повинне мати розмір 1820 х 900'
      end
      field :description, :ck_editor do
        label ''
        help ''
      end
      field :ulr_to_content do
        label ''
        help ''
      end
    end
  end
end
