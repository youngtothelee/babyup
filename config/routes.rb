Rails.application.routes.draw do
  
  devise_for :users
  root to: "pages#home"

  get 'show2/:post_id', to: "pages#show2", as: 'extendp'

  get 'show3/:post_id', to: "pages#show3", as: 'extendn'


  get 'contact' => "pages#contact"

  get "home" => 'pages#home', as: :home

  get "about" => 'pages#about', as: :about

  get "mompost" => 'pages#mompost', as: :mompost

  get "nannypost" => 'pages#nannypost', as: :nannypost

  get 'parentslist' => "pages#parentslist"

  get 'parents_post_write' => "pages#parents_post_write"
  post 'parents_post_write' => "pages#parents_post_write"

  get 'nannylist' => "pages#nannylist"

  get 'nanny_post_write' => "pages#nanny_post_write"

  post 'nanny_post_write' => "pages#nanny_post_write"

  post 'write' => 'pages#write'    #이거는 회원가입

  post 'write2' => 'pages#write2'   #이거는 부모님 글쓰는거

  get "user_info" => "pages#user_info"

  get 'destroy/:u_id' => "pages#destroy"

  get "who" => "pages#who", as: :signup
  get "mypage" => "pages#mypage", as: :mypage

  get "signup" => "pages#signup"
  
  get "signup2" => "pages#signup2"

  get "signin" => "pages#signin", as: :signin

  get 'update_view/:u_id' => "pages#update_view"

  post 'update_change/:u_id' =>"pages#siljae"

  post 'postwrite' => "pages#postwrite"

  get 'destroy2/:post_id' => "pages#destroy2"

  get 'update_view2/:post_id' => "pages#update_view2"

  post 'update_change2/:post_id' => "pages#siljae2"

  get 'viewpost/:post_id' => "pages#viewpost"

  post 'upload' => "pages#upload"

  post 'write3' => 'pages#write3'

  get 'test' => "pages#test"

  get 'destroy3/:post_id' => "pages#destroy3"

  get 'update_view3/:post_id' => "pages#update_view3"

  post 'update_change3/:post_id' => "pages#siljae3"



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
