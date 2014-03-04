class Dveri < ActiveRecord::Base
  attr_accessible :title, :image, :description, :url, :product_model_id, :meta_title, :meta_description, :meta_keyword

  has_attached_file :image, styles:{ avatar: "130x260#", large: "500x1010>"
  },url:'/assets/images/door/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  before_validation :generate_url
  def generate_url
    self.url = title.parameterize
  end

  belongs_to :product_model

  has_many :colory_dverejs

  accepts_nested_attributes_for :colory_dverejs
  attr_accessible :colory_dverejs_attributes

  rails_admin do
    navigation_label 'Продукція'
    label 'Двері'
    label_plural 'Двері'
    list do

      field :title
      field :image
      field :description
      field :url
    end

    edit do
      field :title
      field :product_model
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення 500x1010'
      end
      field :colory_dverejs
      field :description, :ck_editor do

      end
      field :meta_title, :ck_editor do

      end
      field :meta_description, :ck_editor do

      end
      field :meta_keyword, :ck_editor do

      end
    end
  end
end
