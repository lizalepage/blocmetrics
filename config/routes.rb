Rails.application.routes.draw do
  get 'welcome/about'
  get 'welcome/index'
  root 'welcome#index'
  devise_for :users

  resources :registered_applications
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
