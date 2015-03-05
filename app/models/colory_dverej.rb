class ColoryDverej < ActiveRecord::Base
  attr_accessible :title, :image, :dveri_id
  attr_accessible :ico, :slug

  has_attached_file :image, styles:{ avatar: "130x260#", large: "500x1010>"
  },url:'/assets/images/door/color_options/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  has_attached_file :ico, styles:{ avatar: "65x64>"
  },url:'/assets/images/door/color_options/icons/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  belongs_to :dveri

  before_validation :update_slug

  def update_slug
   self.slug = title.parameterize
  end

  rails_admin do
    visible false

    list do
      field :title
      field :ico
      field :image
      field :slug
    end

    edit do
      field :title do
        help 'Послідовність добавляння колборів дверей - "Венге", "Вільха", "Горіх", "Каштан", "Дуб", "Дуб білий".'
      end
      field :ico, :paperclip do
        label 'Іконка:'
      end
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення 500x1010'
      end
      # field :slug do
      #
      # end
    end
  end
end
