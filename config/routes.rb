Rails.application.routes.draw do
  devise_for :orders, ActiveAdmin::Devise.config
  devise_for :products, ActiveAdmin::Devise.config
  devise_for :users

  ActiveAdmin.routes(self)
  
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
