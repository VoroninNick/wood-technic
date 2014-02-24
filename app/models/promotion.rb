class Promotion < ActiveRecord::Base
  attr_accessible :title, :image, :image_on_main_page, :short_description, :description, :begin_promo, :end_promo, :url

  has_attached_file :image, styles:{ large: "1820x1040#"
  },url:'/assets/images/promotions/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  has_attached_file :image_on_main_page, styles:{
      avatar: "830x590>"
  },url:'/assets/images/promotions_main/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  before_validation :generate_url
  def generate_url
    self.url = title.parameterize
  end

  rails_admin do
    navigation_label 'Акції'
    label 'Акція'
    label_plural 'Акції'

    list do
      field :title
      field :image
      field :short_description
      field :begin_promo
      field :end_promo
    end

    edit do
      field :title
      field :short_description
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення'
      end
      field :image_on_main_page, :paperclip do
        label 'Зображення'
        help 'Розмір зображення'
      end
      field :begin_promo
      field :end_promo
      field :description, :ck_editor do

      end
    end
  end
end
