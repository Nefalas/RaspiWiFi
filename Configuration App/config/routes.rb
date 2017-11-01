Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      # Wifi
      get 'wifi/info' => 'wifi_manager#index'
      get 'wifi/credentials' => 'wifi_manager#credentials'
      get 'wifi/reset' => 'wifi_manager#reset'

      # Camera control
      get 'control/start' => 'camera_control#start_stream'
      get 'control/stop' => 'camera_control#stop_stream'
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
   root 'main#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
     get 'main/save_credentials' => 'main#save_credentials'
     get 'main/reset_all' => 'main#reset_all'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
     resources :main

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
