Bookstore::Application.routes.draw do

  get "dashboard/index"

  as :user do
    get "/login", :to => "authentication/sessions#new", as: :new_user_session
    delete "/logout", :to => "authentication/sessions#new", as: :destroy_user_session
    match "/signup", :to => "authentication/registrations#new", as: :new_user_registration
    match "/settings/profile", :to => "authentication/registrations#edit", as: :edit_user_registration
  end

  scope ":login", :as => :user do
  end

  devise_for :users, { :controllers => {:registrations => "authentication/registrations", :sessions => "authentication/sessions", :passwords => "authentication/passwords"}}

  match 'dashboard' => 'dashboard#index', as: :user_root                                                                                                           


  namespace :api do
    namespace :v1 do
      resources :books
      resources :reading_lists
    end
  end
  
  resources :reading_lists

  root :to => "reading_lists#index"

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
