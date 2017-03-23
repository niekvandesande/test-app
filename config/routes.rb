Rails.application.routes.draw do
  resources :tests
	root :to => "recipes#index"
	resources :recipes
end
