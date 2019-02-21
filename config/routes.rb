Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :admin do
    get 'login', to: 'devise/sessions#new'
  end

  root 'pages#index'

  get 'get-help', :to => 'pages#get_help'

  get 'for-survivors', :to => 'pages#for_survivors'

  get 'safety-planning', :to => 'pages#safety_planning'
  
  get 'service-providers', :to => 'pages#service_providers'

  resources :support_centers

  get 'search', to: 'support_centers#search'

end
