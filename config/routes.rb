Rails.application.routes.draw do
  resources :champion_teams, :path => 'games'
  resources :welcomes
  resources :properties
  resources :champion_properties
  # resources :champion_teams
  resources :attributes
  resources :users
  resources :categories
  resources :teams
  resources :champions

  root :to => 'welcomes#index'
  # get 'games', to: 'champion_teams/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
