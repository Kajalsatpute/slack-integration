Rails.application.routes.draw do
  get 'sess/create'
  devise_for :users
  devise_scope :user do
    get "sign_in", to: "devise/sessions#new"
  end
  get 'slack_bots/slack_auth'
  post 'incidents/investigate_incident'
  get 'incidents/index' 
  get 'incidents/sort_incident_list'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "incidents#index"
  get '/auth/slack', to: 'auth#slack'
  get '/auth/slack/callback', to: 'auth#callback'
  # root 'home#index'
  # get '/auth/slack/callback', to: 'sessions#create'
end
