Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'
  # root 'users#my_portfolio'

get 'my_portfolio', to: 'users#my_portfolio'
get 'search_stocks', to: 'stocks#search'
resources :user_stocks, only: [:create]

end
