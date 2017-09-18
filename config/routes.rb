Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  # get '/access_oauth_client_apps', to: 'doorkeeper_client_authorization_#access_oauth_client_apps'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#index'
  get '/me' => 'application#me'
end
