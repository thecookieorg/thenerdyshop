Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  get 'dashboards/index'

  resources :posts
  devise_for :users
  get '/who_we_are' => 'pages#who_we_are'
  get '/what_we_do' => 'pages#what_we_do'
  get '/turn_key_solutions' => 'pages#turn_key_solutions'
  get '/delivery_business' => 'pages#delivery_business'
  get '/social_media_manager' => 'pages#social_media_manager'
  get '/project_manager' => 'pages#project_manager'
  get '/niche_social_network' => 'pages#niche_social_network'
  get '/e_learning_platform' => 'pages#e_learning_platform'
  get '/two_sided_marketplace' => 'pages#two_sided_marketplace'
  get '/crowdfunding_website' => 'pages#crowdfunding_website'
  get '/online_dating_platform' => 'pages#online_dating_platform'
  get '/business_directory' => 'pages#business_directory'
  get '/careers' => 'pages#careers'

  authenticated :user do
    root 'dashboards#index', as: :authenticated_root
  end

  root 'pages#index'

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
end
