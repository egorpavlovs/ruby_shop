Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :products

 #  resources :products do
 #     resources :comments, shallow: true, only: [:create, :update, :destroy]
 #   end
 
	# root to: "products#index"

	resources :ordered_products, only: [:index, :new, :destroy]

  resources :orders, only: [:new, :index]



  resources :cart_products, only: [:index, :new, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
