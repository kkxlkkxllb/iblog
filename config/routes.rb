Iblog::Application.routes.draw do
  get "images/new"
  
  match 'articles/:id' => "articals#show",:as => :article
  resources :articals
  resource :user_session
  resources :users
  resource :account,:controller => "users"
  match 'sitemap' => "home#sitemap"
  match 'home' => 'home#index'
  match 'blog' => 'blog#index'
  match 'me' => 'me#index'
  match 'images' => 'images#index'
  #match 'register' => 'users#new'
  match 'heartme/login' => 'user_sessions#new'
  match 'logout' => "user_sessions#destroy"
  match 'home/update_mp' => "home#update_mp"
  match 'home/update_bbc' => "home#update_bbc"
  match 'me/update_info' => "me#update_info"
  match 'me/update_tel' => "me#update_tel"
  match 'newimage' => "images#new"
  match 'createimage' => "images#create"
  match 'images/:id/destroy' => "images#destroy",:as => :delete
  #comment
  match 'comment' => "me#comment_new"
  match 'deliver' => "me#deliver_comment"
  #feed
  match 'rss' => "articals#rss"
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  #match ':controller(/:action(/:id(.:format)))'
end
