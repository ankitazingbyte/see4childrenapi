Rails.application.routes.draw do
  	resources :events
  	resources :children
  	devise_for :users
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	namespace :api, defaults: { format: 'json' } do
	    namespace :v1 do
	        resources :sessions, only: :create
	        resources :registrations, only: :create
	        resources :ngos
	        post 'password/forgot', to: 'password#forgot'
			post 'password/reset', to: 'password#reset' 
			put 'password/update', to: 'password#update'
			resources :users, only: [:create, :update] do
			    collection do
			        post 'email_update'
			    end
			end
	    end 
  	end
end
