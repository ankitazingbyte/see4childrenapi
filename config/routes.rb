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
	    end 
  	end 
end
