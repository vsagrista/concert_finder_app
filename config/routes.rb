Rails.application.routes.draw do
 resources :concerts
 	resources :concerts do
 		resources :comments
 	end



end
