class ForBuyers < ActiveRecord::Base
  attr_accessible :title, :page_content

  rails_admin do
    navigation_label 'Інформація'
    label 'Для покупців'
    label_plural 'Для покупців'

    list do
      field :title
      field :page_content
    end
    edit do
      field :title do
        label 'Назва'
        help ''
      end
      field :page_content, :ck_editor do
        label 'Сторінка'
        help 'Увага! Заповнення вами цього поля впливає на HTML розмітку сторінки! Будьте уважні!'
      end
    end
  end
end
