Rails.application.routes.draw do
  get 'moves/index'
  get 'moves/show'
  get 'kinds/index'
  get 'kinds/show'
  get 'pokemons/index'
  get 'pokemons/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pokemons, only: [:index, :show]
  resources :kinds, only: [:index, :show]
  resources :moves, only: [:index, :show]
end
