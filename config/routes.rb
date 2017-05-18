Rails.application.routes.draw do
  resources :web_hostings
  resources :tests
	root :to => "recipes#index"
	resources :recipes
end
