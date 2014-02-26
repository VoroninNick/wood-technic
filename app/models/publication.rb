class Publication < ActiveRecord::Base
  attr_accessible :title, :image, :short_description, :description, :url

  has_attached_file :image, styles:{ large: "516x360#"
  },url:'/assets/images/publication/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  before_validation :generate_url
  def generate_url
    self.url = title.parameterize
  end

  rails_admin do
    navigation_label 'Публікації'
    label 'Публікація'
    label_plural 'Публікації'

    list do
      field :title
      field :image
      field :short_description
      field :url
    end

    edit do
      field :title
      field :short_description
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення 516x360'
      end
      field :description, :ck_editor do

      end
    end
  end
end
