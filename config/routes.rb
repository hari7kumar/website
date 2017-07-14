Rails.application.routes.draw do
  get 'welcome/index'

  resources :users
  resources :roles do
  	collection do
  		get'hide_roles'
  		post'hide_roles'
  		get'hide_show'
  		post'hide_show'
  	end
  end


  root"welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
