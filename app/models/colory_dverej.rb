class ColoryDverej < ActiveRecord::Base
  attr_accessible :title, :image, :door_id

  has_attached_file :image, styles:{ avatar: "130x260#", large: "500x1010>"
  },url:'/assets/images/door/color_options/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  belongs_to :dveri

  rails_admin do
    visible false

    list do
      field :titl
      field :image
    end

    edit do
      field :title do
        help 'Послідовність добавляння колборів дверей - "Венге", "Вільха", "Горіх", "Каштан", "Дуб", "Дуб білий".'
      end
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення 500x1010'
      end
    end
  end
end
