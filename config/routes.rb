Rails.application.routes.draw do

  get 'pages/home'
  devise_for :members
  root to: "pages#home"
  devise_scope :member do
    get 'members/sign_out', to: 'devise/sessions#destroy', as: 'log_out'
  end
  post 'games/create', to: "games#create", as: 'create_game'
  get 'players/add_to_game', to: "players#add_to_game", as: 'add_player'
  resources :members
  resources :players
  resources :decks
  resources :cards
  resources :tricks
  resources :games
end
