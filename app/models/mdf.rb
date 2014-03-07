class Mdf < ActiveRecord::Base
  attr_accessible :title, :image, :url, :size

  has_attached_file :image, styles:{ avatar: "540x310#", large: "1800x920>"
  },url:'/assets/images/mdf/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  before_validation :generate_url
  def generate_url
    self.url = title.parameterize
  end

  rails_admin do
    navigation_label 'Продукція'
    label 'МДФ'
    label_plural 'МДФ'
    list do

      field :title
      field :image
      field :url
      field :size
    end

    edit do
      field :title
      field :size do
        label 'Розмір'
      end
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення 1800x920'
      end
    end
  end
end
