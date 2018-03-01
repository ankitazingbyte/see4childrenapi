Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	namespace :api do
	    namespace :v1 do
	        resources :sessions, only: :create
	        resources :registrations, only: :create
	    end 
  	end 
end
