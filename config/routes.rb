SampleApp::Application.routes.draw do
  
  resources :users

=begin
match "static_pages/home", :controller => "static_pages", 
:as => :home, :action => :home
match "static_pages/contact", :controller => "static_pages", 
:as => :contact, :action => :contact
match "static_pages/help", :controller => "static_pages",
 :as => :help,  :action => :help
match "static_pages/about", :controller => "static_pages", 
:as => :about, :action => :about
=end

root :to => 'static_pages#home'

match '/signup',  to: 'users#new'

match '/help',    to: 'static_pages#help'
match '/about',   to: 'static_pages#about'
match '/contact', to: 'static_pages#contact'

end






  

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
  #       match 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       match 'sold'
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
  #       match 'recent', :on => :collection
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
  #root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via match requests.
  # match ':controller(/:action(/:id))(.:format)'

