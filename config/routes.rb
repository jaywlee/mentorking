Rails.application.routes.draw do
  root 'centers#index'

  devise_for :users
  # Routes for the Center resource:
  # CREATE
  get('/centers/new', { :controller => 'centers', :action => 'new' })
  get('/create_center', { :controller => 'centers', :action => 'create' })

  # READ
  get('/centers', { :controller => 'centers', :action => 'index' })
  get('/centers/:id', { :controller => 'centers', :action => 'show' })

  # UPDATE
  get('/centers/:id/edit', { :controller => 'centers', :action => 'edit' })
  get('/update_center/:id', { :controller => 'centers', :action => 'update' })

  # DELETE
  get('/delete_center/:id', { :controller => 'centers', :action => 'destroy' })
  #------------------------------

  # Routes for the Service resource:
  # CREATE
  get('/services/new', { :controller => 'services', :action => 'new' })
  get('/create_service', { :controller => 'services', :action => 'create' })

  # READ
  get('/services', { :controller => 'services', :action => 'index' })
  get('/services/:id', { :controller => 'services', :action => 'show' })

  # UPDATE
  get('/services/:id/edit', { :controller => 'services', :action => 'edit' })
  get('/update_service/:id', { :controller => 'services', :action => 'update' })

  # DELETE
  get('/delete_service/:id', { :controller => 'services', :action => 'destroy' })
  #------------------------------

  # Routes for the Division resource:
  # CREATE
  get('/divisions/new', { :controller => 'divisions', :action => 'new' })
  get('/create_division', { :controller => 'divisions', :action => 'create' })

  # READ
  get('/divisions', { :controller => 'divisions', :action => 'index' })
  get('/divisions/:id', { :controller => 'divisions', :action => 'show' })

  # UPDATE
  get('/divisions/:id/edit', { :controller => 'divisions', :action => 'edit' })
  get('/update_division/:id', { :controller => 'divisions', :action => 'update' })

  # DELETE
  get('/delete_division/:id', { :controller => 'divisions', :action => 'destroy' })
  #------------------------------

  # Routes for the Mentor resource:
  # CREATE
  get('/mentors/new', { :controller => 'mentors', :action => 'new' })
  get('/create_mentor', { :controller => 'mentors', :action => 'create' })

  # READ
  get('/mentors', { :controller => 'mentors', :action => 'index' })
  get('/mentors/:id', { :controller => 'mentors', :action => 'show' })

  # UPDATE
  get('/mentors/:id/edit', { :controller => 'mentors', :action => 'edit' })
  get('/update_mentor/:id', { :controller => 'mentors', :action => 'update' })

  # DELETE
  get('/delete_mentor/:id', { :controller => 'mentors', :action => 'destroy' })
  #------------------------------

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
