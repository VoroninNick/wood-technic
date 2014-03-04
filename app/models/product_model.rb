class ProductModel < ActiveRecord::Base
  attr_accessible :title, :image, :url

  has_attached_file :image, styles:{ large: "817x342#"
  },url:'/assets/images/models/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  before_validation :generate_url
  def generate_url
    self.url = title.parameterize
  end

  has_many :dveris

  rails_admin do
    navigation_label 'Продукція'
    label 'Модель'
    label_plural 'Моделі'

    list do
      field :title
      field :image
      field :url
    end

    edit do
      field :title
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення 817x342'
      end
    end
  end
end
