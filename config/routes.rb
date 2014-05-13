Wt::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # devise_for :views
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :banners

  resources :m_bs

  get '/production' => 'main#production', as: :production
  get '/promotion' => 'main#promotion', as: :promotion
  get '/information' => 'main#information', as: :information
  get '/contacts' => 'main#contacts', as: :contacts

  get '/production/door-interior' => 'production#d_e', as: :door_enterior
  get '/production/door-interior/:url' => 'pages#d_e_s_i', as: :door_enterior_show_one_item
  get '/production/door-louver' => 'production#d_v', as: :door_louver
  get '/production/mdf' => 'production#mdf', as: :mdf

  get '/promotion/:url' => 'pages#promo_one_item', as: :promo_show_one_item

  get '/information/about-us/' => 'wt_information#who_we', as: :about_us
  get '/information/vacancy/' => 'wt_information#vacancy', as: :vacancy
  get '/information/news/' => 'wt_information#news', as: :info_news
  get '/information/news/:url' => 'pages#news_one_item', as: :info_news_show_one_item
  get '/information/reviews' => 'wt_information#reviews', as: :reviews
  get '/information/for_partner/' => 'wt_information#for_partner', as: :for_partner
  get '/information/for_installer/' => 'wt_information#installer', as: :for_installers
  get '/information/for_buyers/' => 'wt_information#for_buyers', as: :for_buyers
  get '/information/certificates_and_warranty/' => 'wt_information#certificates_and_warranty', as: :certificates_and_warranty

  get '/get_image' => 'pages#get_image', as: :get_image
  get '/get_price' => 'pages#price', as: :price

  post '/call_order' => 'main#call_order', as: :call_order
  post '/order_louver_doors' => 'main#order_louver_doors', as: :order_louver_doors
  post '/order_enter_door' => 'main#order_enter_door', as: :order_enter_door
  post '/feedback' => 'main#feedback', as: :feedback

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  root 'main#index'
end
