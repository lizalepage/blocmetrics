Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    match '/events', to: 'events#preflight', via: [:options]
    resources :events, only: [:create]
  end
  get 'welcome/about'
  get 'welcome/index'
  root 'welcome#index'
  devise_for :users

  resources :registered_applications
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
