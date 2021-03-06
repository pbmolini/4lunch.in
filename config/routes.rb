ForLunchIn::Application.routes.draw do
  resources :canteens do
    member do
      get 'details'
    end
    resources :menus do
      resources :dishes do
        resources :ingredients
      end
    end
  end

  resources :ingredients

  class CanteensConstraint
    def matches?(request)
      canteen_id = request.params[:id] || request.params[:canteen_id]
      Canteen.friendly.find(canteen_id)
    end
  end

  get ':id', to: 'canteens#show', constraints: CanteensConstraint.new
  get ':canteen_id/today', to: 'menus#today', constraints: CanteensConstraint.new
  get ':canteen_id/yesterday', to: 'menus#yesterday', constraints: CanteensConstraint.new
  get ':canteen_id/tomorrow', to: 'menus#tomorrow', constraints: CanteensConstraint.new
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'canteens#index'

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
